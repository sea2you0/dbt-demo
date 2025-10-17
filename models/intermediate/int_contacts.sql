WITH contacts AS (
    SELECT * FROM {{ ref("stg_crm_contacts") }}
)

SELECT * FROM contacts