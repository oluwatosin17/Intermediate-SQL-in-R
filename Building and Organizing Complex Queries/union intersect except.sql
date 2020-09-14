create view chinook.customer_2 as
	select
    customer_id, concat(first_name," ",last_name) name,phone,email,support_rep_id
    from chinook.customer c;
    
create view chinook.customer_usa as 
select* 
from chinook.customer
where country = "USA";

select * from chinook.customer_2;

create view chinook.customer_gt_90_dollars as
select c.*
from chinook.customer c
left join chinook.invoice i
on i.customer_id = c.customer_id
left join chinook.invoice_line il
on il.invoice_id = i.invoice_id
group by 1,2
having sum(il.unit_price) > 90;

select * from chinook.customer_gt_90_dollars;

#UNION
select * 
from chinook.customer_usa
 union
 select* from chinook.customer_gt_90_dollars;
 
select * from chinook.customer_usa
intersect
select * from chinook.cutomer_gt_90_dollars;


select * from chinook.customer_usa
except
select * from chinook.cutomer_gt_90_dollars;

