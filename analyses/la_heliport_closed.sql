select
    airport_ident,
    airport_name,
    airport_type,
    dbt_scd_id,
    dbt_updated_at,
    dbt_valid_from,
    dbt_valid_to
from {{ ref('scd_silver_airports') }}
where airport_ident = '01CN'
order by dbt_valid_from asc