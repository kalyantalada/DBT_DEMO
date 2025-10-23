with daily_weather as (
    select weather,cityname,latitude,Langs,
    date(time) daily_weather from 
    {{ source('demo', 'weather') }}
    limit 10
) 

select * from daily_weather