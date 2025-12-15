{% macro example_upper(value) %}
    upper({{ value }})
    {{ return(upper(value)) }}
{% endmacro %}


