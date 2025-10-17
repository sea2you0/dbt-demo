WITH deals AS (
    SELECT * FROM {{ ref("stg_crm_deals") }}
)

SELECT * FROM deals