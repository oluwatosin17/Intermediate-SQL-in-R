select 
media_type_id,
name,
case 
when name like "%Protected%" then 1
else 0 
end as protected
from chinook.media_type;

#Write a query that summarizes the purchases of each customer.
#For the purposes of this exercise, we do not have any two customers with the same name.
#Your query should include the following columns, in order:
#customer_name - containing the first_name and last_name columns separated by a space, e.g. Luke Skywalker.
#number_of_purchases, counting the number of purchases made by each customer.
#total_spent - the sum of customers total purchases made by each customer.
#customer_category - a column that categorizes the customer based on their total purchases. The column should contain the following values:
					#small spender - If the customer's total purchases are less than $40.
					#big spender - If the customer's total purchases are greater than $100.
					#regular - If the customer's total purchases are between $40 and $100 (inclusive).
#Order your results by the customer_name column.

select concat(c.first_name," ", c.last_name) customer_name , 
count(*) number_of_purchases, sum(i.total) total_spent,
case 
	when sum(i.total) < 40 then "small spender"
	when sum(i.total) > 100 then "big spender"
	else "regular"
	end 
as customer_category
from chinook.customer c
inner join chinook.invoice i
on i.customer_id = c.customer_id
group by 1
order by 1
