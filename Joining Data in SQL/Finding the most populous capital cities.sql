select	name, migration_rate
from facts.facts
order by migration_rate desc;

select	name, migration_rate
from facts.facts
order by 2 desc;



select c.name capital_city, f.name country, c.population population
from facts.facts f
left join facts.cities c
on c.facts_id = f.id
where c.capital = 1
order by 3 desc
limit 10;