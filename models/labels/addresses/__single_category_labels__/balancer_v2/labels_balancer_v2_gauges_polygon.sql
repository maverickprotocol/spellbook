{{config(
        
        alias = 'balancer_v2_gauges_polygon',
        post_hook='{{ expose_spells(\'["polygon"]\',
                                    "sector",
                                    "labels",
                                    \'["jacektrocinski", "viniabussafi"]\') }}')}}

WITH reward_gauges AS(
SELECT
    'polygon' AS blockchain,
    gauge.gauge AS address,
    pools.address AS pool_address,
    streamer.gauge AS child_gauge_address,
    'pol:' || pools.name  AS name,
    'balancer_v2_gauges' AS category,
    'balancerlabs' AS contributor,
    'query' AS source,
    TIMESTAMP '2022-01-13'  AS created_at,
    NOW() AS updated_at,
    'balancer_v2_gauges_polygon' AS model_name,
    'identifier' AS label_type
FROM
    {{ source('balancer_ethereum', 'PolygonRootGaugeFactory_evt_PolygonRootGaugeCreated') }} gauge
    LEFT JOIN {{ source('balancer_polygon', 'ChildChainLiquidityGaugeFactory_evt_RewardsOnlyGaugeCreated') }} streamer ON gauge.recipient = streamer.streamer
    LEFT JOIN {{ source('labels', 'balancer_v2_pools_polygon') }} pools ON pools.address = streamer.pool

UNION ALL

SELECT
    'polygon' AS blockchain,
    gauge.gauge AS address,
    pools.address AS pool_address,
    streamer.gauge AS child_gauge_address,
    'pol:' || pools.name  AS name,
    'balancer_v2_gauges' AS category,
    'balancerlabs' AS contributor,
    'query' AS source,
    TIMESTAMP '2022-01-13'  AS created_at,
    NOW() AS updated_at,
    'balancer_v2_gauges_polygon' AS model_name,
    'identifier' AS label_type
FROM
    {{ source('balancer_ethereum', 'CappedPolygonRootGaugeFactory_evt_GaugeCreated') }} gauge
    INNER JOIN {{ source('balancer_ethereum', 'CappedPolygonRootGaugeFactory_call_create') }} call ON call.call_tx_hash = gauge.evt_tx_hash
    LEFT JOIN {{ source('balancer_polygon', 'ChildChainLiquidityGaugeFactory_evt_RewardsOnlyGaugeCreated') }} streamer ON streamer.streamer = call.recipient
    LEFT JOIN {{ source('labels', 'balancer_v2_pools_polygon') }} pools ON pools.address = streamer.pool),

child_gauges AS(
SELECT distinct
    'polygon' AS blockchain,
    call.output_0 AS address,
    pools.address AS pool_address,
    child.output_0 AS child_gauge_address,    
    'pol:' || pools.name AS name,
    'balancer_v2_gauges' AS category,
    'balancerlabs' AS contributor,
    'query' AS source,
    TIMESTAMP '2022-01-13'  AS created_at,
    NOW() AS updated_at,
    'balancer_v2_gauges_polygon' AS model_name,
    'identifier' AS label_type
FROM {{ source('balancer_ethereum', 'CappedPolygonRootGaugeFactory_call_create') }} call
    LEFT JOIN {{ source('balancer_polygon', 'ChildChainGaugeFactory_call_create') }} child ON child.output_0 = call.recipient
    LEFT JOIN {{ source('labels', 'balancer_v2_pools_polygon') }} pools ON pools.address = child.pool),

gauges AS(
SELECT * FROM reward_gauges
WHERE name IS NOT NULL
UNION ALL
SELECT * FROM child_gauges
WHERE name IS NOT NULL),

controller AS( --to allow filtering for active gauges only
SELECT
    c.evt_tx_hash,
    c.evt_index,
    c.evt_block_time,
    c.evt_block_number,
    c.addr AS address,
    ROW_NUMBER() OVER (PARTITION BY g.pool_address ORDER BY evt_block_time DESC) AS rn
FROM {{ source('balancer_ethereum', 'GaugeController_evt_NewGauge') }} c
INNER JOIN gauges g ON g.address = c.addr
)

    SELECT
          g.blockchain
         , g.address
         , g.pool_address
         , g.child_gauge_address
         , g.name
         , CASE WHEN c.rn = 1 
            THEN 'active'
            ELSE 'inactive'
            END AS status
         , g.category
         , g.contributor
         , g.source
         , g.created_at
         , g.updated_at
         , g.model_name
         , g.label_type
    FROM gauges g
    INNER JOIN controller c ON g.address = c.address