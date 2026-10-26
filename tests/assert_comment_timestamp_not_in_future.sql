with comments as (
    select * from {{ ref('silver_airport_comments') }}
)

select
    comment_id,
    airport_ident,
    comment_timestamp,
    loaded_at
from comments
where comment_timestamp > loaded_at