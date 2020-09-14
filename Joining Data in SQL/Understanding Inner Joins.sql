#Write a query that
# joins cities to facts using an inner join
# uses aliases for table name

select c.*, f.name country_name
from facts.facts f
inner join facts.cities c
on c.facts_id = f.id
limit 5;

