with cte as (
    select order_date,
    date(to_timestamp(order_date)) date,
    hour(to_timestamp(order_date)) hour,
    {{function2('order_date')}} day_type,
    dayname(to_timestamp(order_date)) dayname,
    {{function1('order_date')}} 

from {{ source('demo', 'bike') }}
)

select * from cte