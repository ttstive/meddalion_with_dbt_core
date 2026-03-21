{{ config(tags=['shippers']) }}

with shippers as(
    SELECT 
    shipper_id,
    company_name ,
    phone

    FROM {{source('northwind', 'shippers')}}
    WHERE shipper_id is not NULL
)


SELECT * FROM shippers