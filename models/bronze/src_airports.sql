{{ config(materialized='ephemeral') }}

with
airports as (
    select * from {{ source('raw', 'airports') }}
),

renamed as (
    select
        ident as airport_ident,
        type as airport_type,
        name as airport_name,
        latitude_deg as airport_lat,
        longitude_deg as airport_long,
        continent,
        iso_country,
        iso_region
    from airports
)

select * from renamed