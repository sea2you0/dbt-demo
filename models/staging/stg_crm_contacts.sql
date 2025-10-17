{{ config(
    materialized='incremental',
    unique_key='contact_id'
) }}

SELECT * FROM {{ source('crm_landing','contacts') }}
{% if is_incremental() %}
WHERE contact_id NOT IN (SELECT contact_id FROM {{ this }})
{% endif %}