{{ config(materialized='test')}}


select
    sum(c_acctbal) as sum_acctbal
FROM {{ ref('playing_with_tests') }}
having sum(c_acctbal) >= 100000000