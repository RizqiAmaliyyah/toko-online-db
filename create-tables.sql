-- Masuk ke database toko_online_db;
use toko_online_db;

--- Membuat tabel-tabel:

-- Tabel Customer
CREATE TABLE customer (
  id_customer INT PRIMARY KEY AUTO_INCREMENT,
  customer_name VARCHAR(50) NOT NULL,
  age INT,
  city VARCHAR(100) NOT NULL,
  gender ENUM('Man', 'Woman') NOT NULL
);

select * from customer;

-- Tabel Store
CREATE TABLE store (
  id_store INT PRIMARY KEY AUTO_INCREMENT,
  store_name VARCHAR(50) NOT NULL,
  store_location VARCHAR(100) NOT NULL,
  chat_process VARCHAR(50)
);

select * from store;

-- Tabel Category
CREATE TABLE category (
  id_category INT PRIMARY KEY AUTO_INCREMENT,
  category_name VARCHAR(50) NOT NULL
);

select * from category;

-- Tabel Product
CREATE TABLE product (
  id_product INT PRIMARY KEY AUTO_INCREMENT,
  product_name VARCHAR(100) NOT NULL,
  product_price DECIMAL(10, 2) NOT NULL,
  total_sold INT NOT NULL,
  rating INT,
  shipping_fee BOOLEAN,
  stock INT,
  id_category INT,
  store_id INT,
  FOREIGN KEY (store_id) REFERENCES store(id_store),
  FOREIGN KEY (id_category) REFERENCES category(id_category)
);

-- Alter the product table to add the store_name column
ALTER TABLE product ADD COLUMN store_name VARCHAR(50) NOT NULL;

-- Update the existing data with proper store_name values

UPDATE product SET store_name = 'SportsRacket World' WHERE id_product = 1;
UPDATE product SET store_name = 'RacketHub' WHERE id_product = 2;
UPDATE product SET store_name = 'PlayHard Ginting Store' WHERE id_product = 3;
UPDATE product SET store_name = 'RacketAhsan Sports' WHERE id_product = 4;
UPDATE product SET store_name = 'ActiveRacket Owi' WHERE id_product = 5;
UPDATE product SET store_name = 'FitnessRacket Land Hendra' WHERE id_product = 6;
UPDATE product SET store_name = 'RacketGalaxy Kevin' WHERE id_product = 7;
UPDATE product SET store_name = 'SportingRacket Liliyana' WHERE id_product = 8;
UPDATE product SET store_name = 'ProRacket Fitriani' WHERE id_product = 9;
UPDATE product SET store_name = 'RacketExpress Greysia' WHERE id_product = 10;

select * from product;

-- Tabel Order Detail
CREATE TABLE order_detail (
  id_order_detail INT PRIMARY KEY AUTO_INCREMENT,
  id_customer INT,
  id_product INT,
  quantity INT NOT NULL,
  order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (id_customer) REFERENCES customer(id_customer),
  FOREIGN KEY (id_product) REFERENCES product(id_product)
);

ALTER TABLE order_detail
ADD COLUMN transaction_date DATE;

select * from order_detail; 
