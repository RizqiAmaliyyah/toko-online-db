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

-- Tabel Product
CREATE TABLE product (
  id_product INT PRIMARY KEY AUTO_INCREMENT,
  product_name VARCHAR(100) NOT NULL,
  store_name VARCHAR(50) NOT NULL,
  product_price DECIMAL(10, 2) NOT NULL,
  total_sold INT NOT NULL,
  rating INT,
  shipping_fee BOOLEAN,
  stock INT,
  FOREIGN KEY (store_name) REFERENCES store(store_name),
  FOREIGN KEY (id_category) REFERENCES category(id_category)
);




