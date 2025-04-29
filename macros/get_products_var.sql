{% macro get_products_var() %}
    SELECT 
        t1.id, 
        t1.title AS product_title, 
        t1.producttype, 
        t1.updatedat,
        t2.sku, 
        t2.title AS variant_title,
        t2.price
    FROM dc_dc_frontendtest_003.shopgql_hrt_products t1
    JOIN dc_dc_frontendtest_003.shopgql_hrt_products_variants t2
        ON t1.id = t2.hrt_products_id
{% endmacro %}