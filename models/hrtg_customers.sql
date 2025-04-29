select t1.id,t1.displayname, t1.email, t1.lastorder_name, t1.defaultaddress_zip,
       t1.defaultaddress_provincecode,round(t1.amountspent_amount) amount_spent, 
       t2.namespace,t2.key,t2.value
from dc_dc_frontendtest_003.shopgql_hrtg_customers t1 
join dc_dc_frontendtest_003.shopgql_hrtg_customers_metafields t2
on t1.id=t2.hrtg_customers_id