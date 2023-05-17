{{ config(materialized='test')}}


SELECT
    sum(c_acctbal) as sum_acctbal
FROM {{ ref('playing_with_tests') }}
GROUP BY c_custkey
HAVING sum(c_acctbal) >= 100000000
