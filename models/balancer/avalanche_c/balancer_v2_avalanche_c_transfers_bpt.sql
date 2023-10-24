{{
    config(
        schema='balancer_v2_avalanche_c',
        
        alias = 'transfers_bpt',
        partition_by = ['block_month'],
        materialized = 'incremental',
        file_format = 'delta',
        incremental_strategy = 'merge',
        unique_key = ['block_date', 'evt_tx_hash', 'evt_index'],
        post_hook='{{ expose_spells(\'["avalanche_c"]\',
                                    "project",
                                    "balancer_v2",
                                    \'["stefenon", "thetroyharris"]\') }}'
    )
}}

{% set event_signature = '0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef' %}
{% set project_start_date = '2023-02-17' %}

WITH registered_pools AS (
    SELECT
      DISTINCT poolAddress AS pool_address
    FROM
      {{ source('balancer_v2_avalanche_c', 'Vault_evt_PoolRegistered') }}
    {% if is_incremental() %}
    WHERE evt_block_time >= DATE_TRUNC('day', NOW() - interval '7' day)
    {% endif %}
  )

SELECT DISTINCT * FROM (
    SELECT
        'avalanche_c' AS blockchain,
        logs.contract_address,
        logs.tx_hash AS evt_tx_hash,
        logs.index AS evt_index,
        logs.block_time AS evt_block_time,
        TRY_CAST(date_trunc('DAY', logs.block_time) AS date) AS block_date,
        TRY_CAST(date_trunc('MONTH', logs.block_time) AS date) AS block_month,
        logs.block_number AS evt_block_number,
        bytearray_substring(topic1, 13) AS "from",
        bytearray_substring(topic2, 13) AS to,
        bytearray_to_uint256(logs.data) AS value
    FROM {{ source('avalanche_c', 'logs') }} logs
    INNER JOIN registered_pools p ON p.pool_address = logs.contract_address
    WHERE logs.topic0 = {{ event_signature }}
        {% if not is_incremental() %}
        AND logs.block_time >= TIMESTAMP '{{ project_start_date }}'
        {% endif %}
        {% if is_incremental() %}
        AND logs.block_time >= DATE_TRUNC('day', NOW() - interval '7' day)
        {% endif %} ) transfers
