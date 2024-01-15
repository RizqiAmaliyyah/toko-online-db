use toko_online_db;

-- Kategori barang yang paling banyak stoknya
SELECT
  c.category_name,
  SUM(p.stock) AS total_stock
FROM
  product AS p
JOIN
  category AS c ON p.id_category = c.id_category
GROUP BY
  p.id_category
ORDER BY
  total_stock DESC
LIMIT 1;


