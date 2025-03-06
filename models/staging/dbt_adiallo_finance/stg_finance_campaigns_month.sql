with 

source as (

    select * from {{ source('dbt_adiallo_finance', 'finance_campaigns_month') }}

),

renamed as (

    select
        datemonth,
        ads_margin,
        average_basket,
        operational_margin,
        ads_cost,
        ads_impression,
        ads_click,
        quantity,
        revenue,
        purchase_cost,
        margin,
        shipping_fee,
        log_cost,
        ship_cost

    from source

)

select * from renamed
