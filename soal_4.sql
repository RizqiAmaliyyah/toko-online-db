use toko_online_db;

-- Rata-rata transaksi dalam  1 bulan terakhir
SELECT AVG(product_price * quantity) AS average_transaction
FROM order_detail
JOIN product ON order_detail.id_product = product.id_product
WHERE transaction_date BETWEEN '2024-01-01' AND '2024-01-31';