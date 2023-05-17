

select distinct
    o_orderdate,
    sum(o_totalprice) over (order by o_orderdate) as cumulative_sales
from snowflake_sample_data.tpch_sf1.orders
order by o_orderdate