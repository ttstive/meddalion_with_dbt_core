{{ config(materialized='ephemeral', tags=['comercial']) }}

with orders as (
    SELECT
    extract(month from order_date) as month_,
    extract(year from order_date) as year_,
    freight as total_freight

    FROM {{ref('stg_orders')}}
),

sales as (
    select
    month_ ,
    year_ ,
    sum(total_freight) as total_freight
    from orders 
    group by month_ , year_
)


select * from sales