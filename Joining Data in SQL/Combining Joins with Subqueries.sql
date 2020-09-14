select f.name country, c.name capital_city
from facts.facts f
inner join (select *
from facts.cities  
where capital = 1) c
on c.facts_id = f.id
limit 10; 

select c.name capital_city, f.name country , c.population population
from facts.facts f
inner join ( 
select * from facts.cities 
where capital = 1) c
on c.facts_id = f.id
where c.population > 10000000
order by 3 DESC;