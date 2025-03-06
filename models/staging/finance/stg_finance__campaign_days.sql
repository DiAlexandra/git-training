with 

source as (

    select * from {{ source('finance', 'campaign_days') }}

),

renamed as (

    select
        date_date,
        average_basket,
        operational_margin,
        ads_cost,
        ads_impression,
        ads_click,
        total_quantity,
        total_revenue,
        total_purchase_cost,
        margin,
        total_shipping_fees,
        total_log_cost,
        total_ship_cost,
        ads_margin

    from source

)

select * from renamed
