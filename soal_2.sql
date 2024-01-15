use toko_online_db;

-- 3 produk yang paling sering dibeli
SELECT
  p.product_name,
  COUNT(*) AS total_pembelian
FROM
  order_detail AS od
JOIN
  product AS p ON od.id_product = p.id_product
GROUP BY
  od.id_product
ORDER BY
  total_pembelian DESC
LIMIT 3;