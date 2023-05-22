select 
    c.c_custkey,
    c.c_name,
    c.c_nationkey,
    sum(o.o_totalprice) as total_price
from {{ source('sample', 'customer') }} c
left join  {{ source('sample', 'orders') }} o
on c.c_custkey = o.o_custkey
GROUP BY   c.c_custkey, c.c_name, c.c_nationkey