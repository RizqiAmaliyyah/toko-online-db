--- Menghapus data di tabel customer
select * from customer;

-- Menghapus kolom age dari table customer
ALTER TABLE customer
DROP COLUMN age;

--- Menghapus kolom store location

select * from store;

ALTER TABLE store
DROP COLUMN store_location;

select * from product;

ALTER TABLE store
DROP COLUMN rating;