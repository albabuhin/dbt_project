{% macro suspend_wh(whname) %}
    {% set sql %}
        alter warehouse {{ whname }} suspend
    {% endset %}

    {% set table = run_query(sql) %}
    {% do table.print_table() %}
{% endmacro %}