with 

source as (

    select * from {{ source('dbt_adiallo_finance', 'finance_campaign_days') }}

),

renamed as (

    select

    from source

)

select * from renamed
