{{ config(
    materialized='incremental',
    unique_key='deal_id'
) }}
SELECT * FROM {{ source('crm_landing','deals') }}
{% if is_incremental() %}
WHERE contact_id NOT IN (SELECT contact_id FROM {{ this }})
{% endif %}