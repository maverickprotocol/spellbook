{{
    config(
    alias = 'trades',
    post_hook='{{ expose_spells(\'["arbitrum", "ethereum"]\',
        "project",
        "clipper",
        \'["0xRob", "amalashkevich"]\') }}'
    )
}}

{% set clipper_models = [
    ref('clipper_ethereum_trades'),
    ref('clipper_arbitrum_trades'),
    ref('clipper_polygon_trades'),
    ref('clipper_optimism_trades')
] %}


SELECT *

FROM (
    {% for dex_model in clipper_models %}
    SELECT
        blockchain,
        project,
        version,
        block_month,
        block_date,
        block_time,
        token_bought_symbol,
        token_sold_symbol,
        token_pair,
        token_bought_amount,
        token_sold_amount,
        token_bought_amount_raw,
        token_sold_amount_raw,
        amount_usd,
        token_bought_address,
        token_sold_address,
        taker,
        maker,
        project_contract_address,
        tx_hash,
        tx_from,
        tx_to,
        evt_index
    FROM {{ dex_model }}
    {% if not loop.last %}
    UNION ALL
    {% endif %}
    {% endfor %}
)
