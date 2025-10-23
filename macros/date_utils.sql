{% macro function1(x) %}

CASE WHEN to_timestamp({{x}}) < current_date Then 'past'
ELSE 'Future' END

{% endmacro %}

{% macro function2(x)%}
case when dayname(to_timestamp({{x}})) in ('Fri') then 'Weekend'
    else 'Business day' end
{% endmacro%}