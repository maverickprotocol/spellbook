{{
    config(
    schema = 'clipper_v2_arbitrum',
    alias = 'trades',
    partition_by = ['block_month'],
    materialized = 'incremental',
    file_format = 'delta',
    incremental_strategy = 'merge',
    unique_key = ['block_date', 'blockchain', 'project', 'version', 'tx_hash', 'evt_index']
    )
}}

{% set project_start_date = '2023-08-01' %}

WITH event_data as (
    SELECT
        evt_block_time AS block_time,
        evt_block_number as block_number,
        recipient as taker,
        CAST(NULL AS VARBINARY) AS maker,
        inAmount AS token_sold_amount_raw,
        outAmount AS token_bought_amount_raw,
        inAsset as token_sold_address,
        outAsset as token_bought_address,
        contract_address AS project_contract_address,
        evt_tx_hash AS tx_hash,
        evt_index
    FROM  {{ source('clipper_arbitrum', 'ClipperPackedVerifiedExchange_v2_evt_Swapped') }}
    WHERE 1=1
    {% if not is_incremental() %}
    AND evt_block_time >= TIMESTAMP '{{project_start_date}}'
    {% endif %}
    {% if is_incremental() %}
    AND evt_block_time >= date_trunc('day', now() - interval '7' day)
    {% endif %}

)

SELECT
    'arbitrum' AS blockchain
    ,'clipper' AS project
    ,'2' AS version
    ,CAST(date_trunc('DAY', e.block_time) AS date) AS block_date
    ,CAST(date_trunc('month', e.block_time) AS date) AS block_month
    ,e.block_time
    ,t_bought.symbol AS token_bought_symbol
    ,t_sold.symbol AS token_sold_symbol
    ,case
        when lower(t_bought.symbol) > lower(t_sold.symbol) then concat(t_sold.symbol, '-', t_bought.symbol)
        else concat(t_bought.symbol, '-', t_sold.symbol)
    end as token_pair
    ,e.token_bought_amount_raw / power(10, t_bought.decimals) AS token_bought_amount
    ,e.token_sold_amount_raw / power(10, t_sold.decimals) AS token_sold_amount
    ,e.token_bought_amount_raw AS token_bought_amount_raw
    ,e.token_sold_amount_raw AS token_sold_amount_raw
    ,coalesce(
        (e.token_bought_amount_raw / power(10, p_bought.decimals)) * p_bought.price
        ,(e.token_sold_amount_raw / power(10, p_sold.decimals)) * p_sold.price
    ) AS amount_usd
    ,e.token_bought_address
    ,e.token_sold_address
    ,e.taker
    ,e.maker
    ,e.project_contract_address
    ,e.tx_hash
    ,tx."from" AS tx_from
    ,tx.to AS tx_to
    ,e.evt_index
FROM event_data e
INNER JOIN {{ source('arbitrum', 'transactions') }} tx
    ON tx.block_number = e.block_number
    AND tx.hash = e.tx_hash
    {% if not is_incremental() %}
    AND tx.block_time >= TIMESTAMP '{{project_start_date}}'
    {% endif %}
    {% if is_incremental() %}
    AND tx.block_time >= date_trunc('day', now() - interval '7' day)
    {% endif %}
LEFT JOIN {{ ref('tokens_erc20') }} t_bought
    ON t_bought.contract_address = e.token_bought_address
    AND t_bought.blockchain = 'arbitrum'
LEFT JOIN {{ ref('tokens_erc20') }} t_sold
    ON t_sold.contract_address = e.token_sold_address
    AND t_sold.blockchain = 'arbitrum'
LEFT JOIN {{ source('prices', 'usd') }} p_bought
    ON p_bought.minute = date_trunc('minute', e.block_time)
    AND p_bought.contract_address = e.token_bought_address
    AND p_bought.blockchain = 'arbitrum'
    {% if not is_incremental() %}
    AND p_bought.minute >= TIMESTAMP '{{project_start_date}}'
    {% endif %}
    {% if is_incremental() %}
    AND p_bought.minute >= date_trunc('day', now() - interval '7' day)
    {% endif %}
LEFT JOIN {{ source('prices', 'usd') }} p_sold
    ON p_sold.minute = date_trunc('minute', e.block_time)
    AND p_sold.contract_address = e.token_sold_address
    AND p_sold.blockchain = 'arbitrum'
    {% if not is_incremental() %}
    AND p_sold.minute >= TIMESTAMP '{{project_start_date}}'
    {% endif %}
    {% if is_incremental() %}
    AND p_sold.minute >= date_trunc('day', now() - interval '7' day)
    {% endif %}
