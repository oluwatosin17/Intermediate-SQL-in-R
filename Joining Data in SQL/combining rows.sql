create view chinook.customers_usa_gt_90_dollars as
select c.*
from chinook.customer c
left join chinook.invoice i
on i.customer_id = c.customer_id
left join chinook.invoice_line il
on il.invoice_id = i.invoice_id
where c.country = "USA"
group by 1,2
having sum(il.unit_price) > 90;

select concat(e.first_name," ",e.last_name) employee_name,
 count(cc.customer_id) customers_usa_gt_90_dollars
 from chinook.employee e
left join  chinook.customers_usa_gt_90_dollars cc
on  cc.support_rep_id = e.employee_id
where e.title = "Sales Support Agent"
group by 1
order by 1
