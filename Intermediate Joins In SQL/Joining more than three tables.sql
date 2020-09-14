
select t.track_id track_id, t.name track_name, ar.name artist_name, mt.name track_type, il.unit_price unit_price, il.quantity
from chinook.invoice_line il
inner join chinook.track t
on t.track_id = il.track_id
inner join chinook.media_type mt
on mt.media_type_id = t.media_type_id
inner join chinook.album al
on al.album_id = t.album_id
inner join chinook.artist ar
on ar.artist_id = al.artist_id
where invoice_id = 4;