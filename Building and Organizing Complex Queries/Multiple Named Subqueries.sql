with usa as (
select * from chinook.customer
where country = "USA"
),
last_name_g as
(select * from usa
where last_name like "G%"),
state_ca as
(select * 
from last_name_g
where state = "CA"
)

select first_name, last_name, country,state
from state_ca;


with india_cus as (
select * from chinook.customer
where country = "India"
),
india_tot as
(select customer_id, sum(i.total) total_purchases 
from chinook.invoice i
group by customer_id
)
select concat(c.first_name," ",c.last_name) customer_name , t.total_purchases
from india_cus c
inner join india_tot t
on c.customer_id = t.customer_id
order by 1
