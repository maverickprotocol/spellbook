{{
    config(
        schema = 'maverick_arbitrum',
        alias = 'base_trades',
        materialized = 'incremental',
        file_format = 'delta',
        incremental_strategy = 'merge',
        unique_key = ['tx_hash', 'evt_index'],
        incremental_predicates = [incremental_predicate('DBT_INTERNAL_DEST.block_time')]
    )
}}

{{
    maverick_compatible_trades(
        blockchain = 'arbitrum',
        project = 'maverick',
        version = '2',
        source_evt_swap = source('maverick_v2_arbitrum', 'V2Pool_evt_PoolSwap'),
        source_evt_pool = source('maverick_v2_arbitrum', 'V2Factory_evt_PoolCreated')
    )
}}
