{% snapshot my_first_model_snapshot %}
    {{
        config(
            target_database='analytics',
            target_schema='snapshots',
            unique_key='id',
            strategy='timestamp',
            updated_at='updated_at',
            post_hook='grant select on {{this}} to role analyst'
            )
    }}

    select * from {{ ref('my_first_dbt_model') }}

{% endsnapshot %}