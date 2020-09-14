#Write a query that returns in order
# A column of country names
# A column of each country's capital city 

select f.name country, c.name capital_city
from facts.cities c
inner join facts.facts f
on f.id = c.facts_id
where c.capital = 1
