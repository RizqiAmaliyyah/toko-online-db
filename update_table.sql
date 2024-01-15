use toko_online_db;

-- Update data customer dengan id_customer = 1
UPDATE customer SET customer_name = 'Kodai Naraoka', age = 22, city = 'Aomori' WHERE id_customer = 1;

select * from customer;

-- Update data store dengan id_store = 1
UPDATE store SET store_name = 'Kodai Sports Store', store_location = 'Prefekture Aomori', chat_process = 'KodaiSportsStoreChat' WHERE id_store = 1;

SELECT * from store;

-- Update data category dengan id_category = 1
UPDATE category SET category_name = 'Shuttles' WHERE id_category = 1;

select * from category;

-- Update data product dengan id_product = 1
UPDATE product SET product_name = 'Victor Racket Crayon Shincan Special Edition', store_name = 'New Sports Store', product_price = 150.00, total_sold = 50, rating = 4.5, shipping_fee = true, stock = 100, id_category = 1 WHERE id_product = 1;

select * from product;