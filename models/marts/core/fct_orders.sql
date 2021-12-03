with orders as (
    select * from {{ ref('stg_order') }}
),

payment as (
    select * from {{ ref('stg_payment') }}
),


final as (
    select customer_id,
    order_id,
    total_amount

    from  orders

    left join payment using (order_id)
)

select * from final