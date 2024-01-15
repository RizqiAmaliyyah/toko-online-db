-- Masuk ke databse
use toko_online_db;

-- Memasukkan data ke tabel

-- Memasukkan data atlet badminton Indonesia ke dalam customer table
INSERT INTO customer (customer_name, age, city, gender) VALUES
('Hendra Setiawan', 36, 'Malang', 'Man'),
('Greysia Polii', 34, 'Jakarta', 'Woman'),
('Anthony Sinisuka Ginting', 25, 'Cimahi', 'Man'),
('Praveen Jordan', 28, 'Bontang', 'Man'),
('Ratchanok Intanon', 26, 'Yogyakarta', 'Woman'),
('Mohammad Ahsan', 33, 'Palembang', 'Man'),
('Gregoria Mariska Tunjung', 21, 'Surabaya', 'Woman'),
('Fajar Alfian', 26, 'Medan', 'Man'),
('Aprilia Manganang', 30, 'Bandung', 'Woman'),
('Marcus Fernaldi Gideon', 30, 'Semarang', 'Man');

select * from customer;

-- Memasukkan data ke dalam tabel store dengan nama atlet badminton Indonesia sebagai pemilik toko
INSERT INTO store (store_name, store_location, chat_process) VALUES
('TaufikHidayat Sports', 'Jl. Raket No. 1', 'TaufikHidayatSportsChat'),
('RacketLinDan World', 'Jl. Raket Plaza No. 5', 'RacketLinDanWorldChat'),
('PlayHard Ginting Store', 'Jl. Main No. 10', 'PlayHardGintingChat'),
('RacketAhsan Sports', 'Jl. Heaven No. 7', 'RacketAhsanSportsChat'),
('ActiveRacket Owi', 'Jl. Aktif No. 15', 'ActiveRacketOwiChat'),
('FitnessRacket Land Hendra', 'Jl. Fitness No. 20', 'FitnessRacketLandHendraChat'),
('RacketGalaxy Kevin', 'Jl. Galaxy Racket Square No. 3', 'RacketGalaxyKevinChat'),
('SportingRacket Liliyana', 'Jl. Life No. 25', 'SportingRacketLiliyanaChat'),
('ProRacket Fitriani', 'Jl. Pro Racket No. 8', 'ProRacketFitrianiChat'),
('RacketExpress Greysia', 'Jl. Express No. 12', 'RacketExpressGreysiaChat');

 select * from store;

-- Memasukkan data dari kategori yang ada di badminton ke dalam tabel category  
INSERT INTO category (category_name) VALUES
('Rackets'),
('Shuttles'),
('Apparel'),
('Footwear'),
('Accessories'),
('Strings'),
('Grips'),
('Bags'),
('Training Equipment'),
('Court Equipment');
 
select * from category;

-- Memasukkan data ke dalam tabel product untuk produk badminton yang umum dipakai oleh atlet
INSERT INTO product (product_name, store_name, product_price, total_sold, rating, shipping_fee, stock, id_category) VALUES
('Yonex Nanoflare 800', 'SportsRacket World', 250.00, 50, 4.5, true, 100, 1),
('Victor Hypernano X 900', 'RacketHub', 280.00, 40, 4.8, true, 80, 1),
('Li-Ning Windstorm 72', 'PlayHard Ginting Store', 200.00, 60, 4.2, true, 120, 1),
('Yonex Aerosensa 40', 'RacketAhsan Sports', 30.00, 200, 4.7, false, 500, 2),
('Asics Gel-Rocket 9', 'ActiveRacket Owi', 80.00, 80, 4.4, true, 150, 4),
('Yonex BG-80 Power', 'FitnessRacket Land Hendra', 15.00, 300, 4.6, false, 600, 6),
('Kawasaki King K8', 'RacketGalaxy Kevin', 180.00, 30, 4.9, true, 50, 1),
('Li-Ning A900', 'SportingRacket Liliyana', 150.00, 45, 4.5, true, 70, 1),
('Yonex Pro Series 9', 'ProRacket Fitriani', 300.00, 20, 4.8, true, 40, 1),
('Victor Multithermobag 9030', 'RacketExpress Greysia', 120.00, 25, 4.7, true, 30, 8);

select * from product;

---- Memasukkan data detail pemebelian
INSERT INTO order_detail (id_customer, id_product, quantity) VALUES
(1, 1, 2),  -- Id 1 membeli 2 Yonex Nanoflare 800
(2, 2, 1),  -- Id 2 membeli 1 Victor Hypernano X 900
(3, 3, 3),  -- Id 3 membeli 3 Li-Ning Windstorm 72
(4, 4, 2),  -- Id 4 membeli 2 Yonex Aerosensa 40
(5, 5, 1),  -- Id 5 membeli 1 Asics Gel-Rocket 9
(6, 6, 3),  -- Id 6 membeli 3 Yonex BG-80 Power
(7, 7, 2),  -- Id 7 membeli 2 Kawasaki King K8
(8, 8, 1),  -- Id 8 membeli 1 Li-Ning A900
(9, 9, 3),  -- Id 9 membeli 3 Yonex Pro Series 9
(10, 10, 2);-- Id 10 membeli 2 Victor Multithermobag 9030

select * from order_detail;