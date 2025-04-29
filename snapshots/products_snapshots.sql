{% snapshot products_snapshots %}
{{
    config(
        target_schema='snapshots',     
        unique_key='id',               
        strategy='timestamp',
        updated_at='updatedat'
    )
}}

SELECT * FROM {{ source('dc_dc_frontendtest_003', 'shopgql_hrt_products') }}

{% endsnapshot %}