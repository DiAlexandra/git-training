with 

source as (

    select * from {{ source('finance', 'campaign_days') }}

),

renamed as (

    select

    from source

)

select * from renamed
