{% set blockchain = 'sei' %}

{{
    config(
        schema = 'jelly_swap_' + blockchain,
        alias = 'liquidity',
        materialized = 'table',
        file_format = 'delta'
    )
}}

{{ 
    balancer_v2_compatible_liquidity_macro(
        blockchain = blockchain,
        version = '2',        
        project_decoded_as = 'jelly_swap',
        base_spells_namespace = 'jelly_swap_sei',
        pool_labels_spell = ref('labels_jelly_swap_pools_sei')
    )
}}
