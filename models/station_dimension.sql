with BIKE AS (
    SELECT * FROM 
    {{ source('demo', 'bike') }}
)

select * from bike