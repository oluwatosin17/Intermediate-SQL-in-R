select count(distinct(name))
from facts.facts;

select count(distinct(facts_id))
from facts.cities;

select f.id,c.facts_id
from facts.facts f
left join facts.cities c
on c.facts_id = f.id;

select f.name country , f.population
from facts.facts f
left join facts.cities c
on c.facts_id = f.id
where c.name is null;