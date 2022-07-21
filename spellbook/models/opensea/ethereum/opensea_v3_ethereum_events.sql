 {{ config(schema = 'opensea_v3_ethereum', 
alias='events') }}
  
SELECT blockchain,
'opensea' as project,
'v3' as version,
block_time,
token_id,
collection,
amount_usd,
token_standard,
trade_type,
number_of_items,
trade_category,
evt_type,
seller,
buyer,
amount_original,
amount_raw,
currency_symbol,
currency_contract,
nft_contract_address,
project_contract_address,
aggregator_name,
aggregator_address,
block_number,
tx_hash,
tx_from,
tx_to,
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
unique_trade_id 
FROM {{ ref('seaport_ethereum_transfers') }} 
WHERE zone in ('0xf397619df7bfd4d1657ea9bdd9df7ff888731a11'
                              ,'0x9b814233894cd227f561b78cc65891aa55c62ad2'
                              ,'0x004c00500000ad104d7dbd00e3ae0a5c00560c00')