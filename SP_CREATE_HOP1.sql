create table actor_hop1
(actor_id SMALLINT,
name VARCHAR(100),
last_update TIMESTAMP);


create table address_hop1 
(address_id SMALLINT,
  address VARCHAR(50),
  district VARCHAR(20),
  city_id SMALLINT,
  postal_code VARCHAR(10),
  phone VARCHAR(20),
  last_update TIMESTAMP);


create table customer_hop1
( customer_id SMALLINT,
  store_id TINYINT,
  name VARCHAR(100),
  email VARCHAR(50),
  address_id SMALLINT,
  active BOOLEAN);
  
create table film_hop1
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


create table category_hop1
(  category_id TINYINT,
  name VARCHAR(25));


create table city_hop1
 (city_id SMALLINT,
  city VARCHAR(50),
  country_id VARCHAR(50));
  
  
 create table film_actor_hop1 
  ( actor_id SMALLINT,
  film_id SMALLINT);

  
create table film_category_hop1 
( film_id SMALLINT,
  category_id TINYINT);
  
  create table payment_hop1 
  (payment_id SMALLINT,
  customer_id SMALLINT,
  staff_id TINYINT,
  rental_id INT,
  amount DECIMAL(5, 2),
  payment_date DATETIME);


create table store_hop1 
( store_id TINYINT,
  manager_staff_id TINYINT,
  address_id SMALLINT);


create table inventory_hop1 
( inventory_id MEDIUMINT,
  film_id SMALLINT,
  store_id TINYINT);

create table film_text_hop1 
( film_id SMALLINT,
  title VARCHAR(255),
  description TEXT);

create table rental_hop1 
( rental_id INT,
  rental_date DATETIME,
  inventory_id MEDIUMINT,
  customer_id SMALLINT,
  return_date DATETIME,
  staff_id TINYINT);


create table staff_hop1 
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


create table film_actor_hop1 
( actor_id SMALLINT,
  film_id SMALLINT);


create table Languages_hop1 
(language_id TINYINT,
  name CHAR(20));
  
  
create table store_hop1 
(store_id TINYINT,
  manager_staff_id TINYINT,
  address_id SMALLINT);

create table country_hop1 (
    country_id SMALLINT,
    country VARCHAR(50));
    
call SP_TRANS_HOP1;

insert into customer_hop1
  select customer_id, 
  store_id ,
  concat(first_name, ' ' ,last_name) Name,
  email ,
  address_id ,
  active from customer;
  
  update customer_hop1
  set email = replace(email, 'sakilacustomer.org', 'blueboxdvd.com')
  where email LIKE '%@sakilacustomer.org';
  
  SET SQL_SAFE_UPDATES=0;
