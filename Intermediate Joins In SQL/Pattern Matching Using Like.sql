select c.first_name, c.last_name, c.phone
from chinook.customer c
where c.first_name like "%Jen%";

select first_name, last_name, phone
from chinook.customer c
where first_name like "%belle%";