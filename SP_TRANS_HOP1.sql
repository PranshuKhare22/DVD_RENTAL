CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_TRANS_HOP1`()
BEGIN

insert into actor_hop1
select actor_id ,
concat(first_name, ' ', last_name) Name,
last_update from actor;

insert into address_hop1
select address_id,
  address ,
  district,
  city_id ,
  ifnull(postal_code,0) postal_code,
  ifnull(phone, 0000000000) phone,
  last_update from address;
  
  insert into customer_hop1
  select customer_id 
  store_id ,
  concat(first_name, ' ' ,last_name) Name,
  email ,
  address_id ,
  active from customer;
  update customer_hop1
  set email = replace(email, 'sakilacustomer.org', 'blueboxdvd.com')
  where email LIKE '%@sakilacustomer.org';

insert into film_hop1
select film_id,
  title ,
  description ,
  release_year,
  language_id ,
  rental_duration ,
  rental_rate ,
  length ,
  replacement_cost ,
  case
  when rating = 'G' then 'General Audience' 
  when rating = 'PG' then 'Parental Guidance'
  when rating = 'PG-13' then 'Parents Strongly Cautioned'
  when rating = 'R' then 'Restricted'
  when rating = 'NC-17' then 'Adults only'
  else rating end
  rating ,
  special_features ,
  last_update from film;
create table category_hop1
(  category_id TINYINT,
  name VARCHAR(25));


insert into city_hop1
 (select city_id,
  city ,
  country_id from city);
  
  
 insert into  film_actor_hop1 
  (select actor_id,
  film_id from fim_actor);

  
insert into film_category_hop1 
(select film_id ,
  category_id from film_category);
  
insert into payment_hop1 
  (select payment_id ,
  customer_id ,
  staff_id ,
  rental_id,
  amount ,
  payment_date from payment);


insert into store_hop1 
(select store_id ,
  manager_staff_id ,
  address_id from store);


insert into inventory_hop1 
( select inventory_id ,
  film_id ,
  store_id from inventory);

insert into film_text_hop1 
( select film_id ,
  title ,
  description from film_text);

insert into rental_hop1 
( select rental_id,
  rental_date ,
  inventory_id,
  customer_id ,
  return_date ,
  staff_id from rental);


insert into staff_hop1 
( select staff_id ,
  first_name ,
  last_name ,
  address_id ,
  picture ,
  email ,
  store_id,
  active ,
  username ,
  password from staff);


insert into film_actor_hop1 
( select actor_id ,
  film_id from film_actor);


insert into Languages_hop1 
(select language_id,
  name from languages);
  
  
insert into store_hop1 
(select store_id ,
  manager_staff_id ,
  address_id from store);

insert into country_hop1 (
    select country_id ,
    country from country);
    
END
