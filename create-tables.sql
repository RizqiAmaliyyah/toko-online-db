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

select * from product;
