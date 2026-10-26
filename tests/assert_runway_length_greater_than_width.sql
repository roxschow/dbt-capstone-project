with runways as (
    select * from {{ ref('silver_runways') }}
)

select
    runway_id,
    airport_ident,
    runway_length_ft,
    runway_width_ft
from runways
where runway_length_ft is not null
  and runway_width_ft is not null
  and runway_width_ft >= runway_length_ft