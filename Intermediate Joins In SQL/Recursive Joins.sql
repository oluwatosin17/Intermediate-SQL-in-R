select e1.employee_id, e2.employee_id supervisor_id
from chinook.employee e1
inner join chinook.employee e2 
on e2.reports_to = e1.employee_id
limit 4;

select concat(e1.first_name ," ", e1.last_name) employee_name, e1.title employee_title, concat(e2.first_name , " ", e2.last_name) supervisor_name, e2.title supervisor_title
from chinook.employee e1
left join chinook.employee e2 
on e1.reports_to = e2.employee_id
order by 1 ;