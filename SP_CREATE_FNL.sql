CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_CREAT_FNL`()
BEGIN
create table tbl_fnl_actor
(actor_id SMALLINT,
name VARCHAR(100),
last_update TIMESTAMP);


create table tbl_fnladdress 
(address_id SMALLINT,
  address VARCHAR(50),
  district VARCHAR(20),
  city_id SMALLINT,
  postal_code VARCHAR(10),
  phone VARCHAR(20),
  last_update TIMESTAMP);


create table tbl_fnl_customer
( customer_id SMALLINT,
  store_id TINYINT,
  name VARCHAR(100),
  email VARCHAR(50),
  address_id SMALLINT,
  active BOOLEAN);
  
create table tbl_fnl_film
( film_id SMALLINT,
  title VARCHAR(128),
  description TEXT,
  release_year YEAR,
  language_id TINYINT,
  rental_duration TINYINT,
  rental_rate DECIMAL(4, 2),
  length SMALLINT,
  replacement_cost DECIMAL(5, 2),
  rating VARCHAR(5),
  special_features VARCHAR(20),
  last_update TIMESTAMP);


create table tbl_fnl_category
(  category_id TINYINT,
  name VARCHAR(25));


create table tbl_fnl_city
 (city_id SMALLINT,
  city VARCHAR(50),
  country_id VARCHAR(50));
  
  
 create table tbl_fnl_film_actor 
  ( actor_id SMALLINT,
  film_id SMALLINT);

  
create table tbl_fnl_film_category 
( film_id SMALLINT,
  category_id TINYINT);
  
  create table tbl_fnl_payment 
  (payment_id SMALLINT,
  customer_id SMALLINT,
  staff_id TINYINT,
  rental_id INT,
  amount DECIMAL(5, 2),
  payment_date DATETIME);


create table tbl_fnl_store 
( store_id TINYINT,
  manager_staff_id TINYINT,
  address_id SMALLINT);


create table tbl_fnl_inventory
( inventory_id MEDIUMINT,
  film_id SMALLINT,
  store_id TINYINT);

create table tbl_fnl_film_text 
( film_id SMALLINT,
  title VARCHAR(255),
  description TEXT);

create table tbl_fnl_rental
( rental_id INT,
  rental_date DATETIME,
  inventory_id MEDIUMINT,
  customer_id SMALLINT,
  return_date DATETIME,
  staff_id TINYINT);


create table tbl_fnl_staff
( staff_id TINYINT,
  first_name VARCHAR(45),
  last_name VARCHAR(45),
  address_id SMALLINT,
  picture BLOB,
  email VARCHAR(50),
  store_id TINYINT,
  active BOOLEAN,
  username VARCHAR(16),
  password VARCHAR(40));


create table tbl_fnl_film_actor
( actor_id SMALLINT,
  film_id SMALLINT);


create table tbl_fnl_Languages
(language_id TINYINT,
  name CHAR(20));
  
  
create table tbl_fnl_store 
(store_id TINYINT,
  manager_staff_id TINYINT,
  address_id SMALLINT);

create table tbl_fnl_country (
    country_id SMALLINT,
    country VARCHAR(50));
    


  

END