with success_payment as (
    select orderid as order_id,
    amount

    from raw.stripe.payment

    where status = 'success'
)
,

payment as (
    select order_id,
    sum(amount) as total_amount

    from success_payment

    group by 1

)

select * from payment