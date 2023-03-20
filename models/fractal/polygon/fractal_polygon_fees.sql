 {{
  config(
        alias='fees',
        schema = 'fractal_polygon',
        post_hook='{{ expose_spells(\'["polygon"]\',
                                    "project",
                                    "fractal",
                                    \'["springzh"]\') }}')
}}

SELECT blockchain,
      project,
      version,
      block_time,
      token_id,
      collection,
      platform_fee_amount_raw,
      platform_fee_amount,
      platform_fee_amount_usd,
      platform_fee_percentage,
      royalty_fee_amount_raw,
      royalty_fee_amount,
      royalty_fee_amount_usd,
      royalty_fee_percentage,
      royalty_fee_receive_address,
      royalty_fee_currency_symbol,
      token_standard,
      trade_type,
      number_of_items,
      trade_category,
      evt_type,
      seller,
      buyer,
      nft_contract_address,
      project_contract_address,
      aggregator_name,
      aggregator_address,
      block_number,
      tx_hash,
      tx_from,
      tx_to,
      unique_trade_id
FROM {{ ref('fractal_polygon_events') }}
WHERE evt_type = 'Trade'
      AND platform_fee_amount_usd > 0
