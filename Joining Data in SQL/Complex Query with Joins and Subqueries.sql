

SELECT f.name country , c.urban_pop, f.population total_pop, 
(c.urban_pop / CAST((f.population) AS FLOAT)) urban_pct
FROM facts.facts f
INNER JOIN ( SELECT facts_id ,sum(population) urban_pop
FROM facts.cities
group by 1) c
ON c.facts_id = f.id
WHERE (c.urban_pop / CAST((f.population) AS FLOAT)) > 0.5
ORDER BY 4;