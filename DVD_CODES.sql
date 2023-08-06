
--Q1--
select c.name, sum(rental_duration) duration from category c 
join film_category fc
on c.category_id = fc.category_id
join film f 
on fc.film_id = f.film_id
group by c.name
order by duration desc
limit 1;


--Q2--
select c.name, sum(rental_duration) duration from category c 
join film_category fc
on c.category_id = fc.category_id
join film f 
on fc.film_id = f.film_id
group by c.name
order by duration desc
;
