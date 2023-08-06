use dvd;

create table actor
(actor_id SMALLINT,
first_name  VARCHAR(45),
last_name  VARCHAR(45),
last_update TIMESTAMP);


create table address (
  address_id SMALLINT,
  address VARCHAR(50),
  address2 VARCHAR(50),
  district VARCHAR(20),
  city_id SMALLINT,
  postal_code VARCHAR(10),
  phone VARCHAR(20),
  last_update TIMESTAMP);


create table category 
(  category_id TINYINT,
  name VARCHAR(25),
  last_update TIMESTAMP);


create table city
 (city_id SMALLINT,
  city VARCHAR(50),
  country_id VARCHAR(50),
  last_update TIMESTAMP);
  
  
 create table film_actor 
  ( actor_id SMALLINT,
  film_id SMALLINT,
  last_update TIMESTAMP);

create table customer 
( customer_id SMALLINT,
  store_id TINYINT,
  first_name VARCHAR(45),
  last_name VARCHAR(45),
  email VARCHAR(50),
  address_id SMALLINT,
  active BOOLEAN,
  create_date DATETIME,
  last_update TIMESTAMP);
  
create table film_category 
( film_id SMALLINT,
  category_id TINYINT,
  last_update TIMESTAMP);
  
  create table payment 
  (payment_id SMALLINT,
  customer_id SMALLINT,
  staff_id TINYINT,
  rental_id INT,
  amount DECIMAL(5, 2),
  payment_date DATETIME,
  last_update TIMESTAMP);


create table store 
( store_id TINYINT,
  manager_staff_id TINYINT,
  address_id SMALLINT,
  last_update TIMESTAMP);


create table inventory 
( inventory_id MEDIUMINT,
  film_id SMALLINT,
  store_id TINYINT,
  last_update TIMESTAMP);

create table film_text 
( film_id SMALLINT,
  title VARCHAR(255),
  description TEXT);

create table rental 
( rental_id INT,
  rental_date DATETIME,
  inventory_id MEDIUMINT,
  customer_id SMALLINT,
  return_date DATETIME,
  staff_id TINYINT,
  last_update TIMESTAMP);


create table staff 
( staff_id TINYINT,
  first_name VARCHAR(45),
  last_name VARCHAR(45),
  address_id SMALLINT,
  picture BLOB,
  email VARCHAR(50),
  store_id TINYINT,
  active BOOLEAN,
  username VARCHAR(16),
  password VARCHAR(40),
  last_update TIMESTAMP);

create table film 
( film_id SMALLINT,
  title VARCHAR(128),
  description TEXT,
  release_year YEAR,
  language_id TINYINT,
  original_language_id TINYINT,
  rental_duration TINYINT,
  rental_rate DECIMAL(4, 2),
  length SMALLINT,
  replacement_cost DECIMAL(5, 2),
  rating VARCHAR(5),
  special_features VARCHAR(20),
  last_update TIMESTAMP);

create table film_actor 
( actor_id SMALLINT,
  film_id SMALLINT,
  last_update TIMESTAMP);


create table Languages 
(language_id TINYINT,
  name CHAR(20),
  last_update TIMESTAMP);
  
  
create table store 
(store_id TINYINT,
  manager_staff_id TINYINT,
  address_id SMALLINT,
  last_update TIMESTAMP);

create table country (
    country_id SMALLINT,
    country VARCHAR(50),
    last_update TIMESTAMP
);

