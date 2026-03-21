{{ config(tags=['comercial']) }}

with sales as (
    SELECT
    *
    FROM {{ref('int_sales')}}
)


select * from sales