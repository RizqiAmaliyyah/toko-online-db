-- Masuk ke database toko_online_db;
use toko_online_db;

--- Table customers
CREATE TABLE customer (
  id_customer INT PRIMARY KEY AUTO_INCREMENT,
  customer_name VARCHAR(50) NOT NULL,
  age INT,
  city VARCHAR(100) NOT NULL,
  gender ENUM('Man', 'Woman') NOT NULL
);
