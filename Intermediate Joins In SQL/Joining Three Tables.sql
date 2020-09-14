select *
from chinook.invoice_line
where invoice_id = 3;

select * 
from chinook.invoice_line il
inner join chinook.track t
on t.track_id = il.track_id
where invoice_id = 3;

select *
from chinook.invoice_line il
inner join chinook.track t
on t.track_id = il.track_id
inner join chinook.media_type mt
on mt.media_type_id = t.media_type_id
where invoice_id = 3;

select t.track_id track_id, t.name track_name, mt.name track_type, il.unit_price unit_price, il.quantity
from chinook.invoice_line il
inner join chinook.track t
on t.track_id = il.track_id
inner join chinook.media_type mt
on mt.media_type_id = t.media_type_id
where invoice_id = 4;