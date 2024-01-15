use toko_online_db;

--- 1 pelanggan membeli 3 barang yang berbeda
SELECT od.id_customer, c.customer_name, COUNT(DISTINCT od.id_product) as distinct_product_count
FROM order_detail od
JOIN customer c ON od.id_customer = c.id_customer
GROUP BY od.id_customer, c.customer_name
HAVING distinct_product_count = 3;

--- Output: tidak ada customer yang membeli 3 barang yang berbeda