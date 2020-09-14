select * 
from facts.facts
inner join facts.cities 
on facts.cities.facts_id = facts.facts.id
limit 5;

select * 
from facts.cities
inner join facts.facts
on facts.facts.id = facts.cities.facts_id
limit 10;