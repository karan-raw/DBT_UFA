select t1.id, t1.title product_title, t1.producttype, t1.updatedat,
       t2.sku, t2.title var_title, t2.price
from dc_dc_frontendtest_003.shopgql_hrt_products t1
join dc_dc_frontendtest_003.shopgql_hrt_products_variants t2
on t1.id=t2.hrt_products_id