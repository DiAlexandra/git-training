with 

source as (

    select * from {{ source('finance', 'days') }}

),

renamed as (

    select
        date_date,
        nb_transactions,
        total_revenue,
        average_basket,
        operational_margin,
        total_purchase_cost,
        total_shipping_fees,
        total_log_cost,
        total_quantity,
        total_ship_cost,
        margin

    from source

)

select * from renamed
