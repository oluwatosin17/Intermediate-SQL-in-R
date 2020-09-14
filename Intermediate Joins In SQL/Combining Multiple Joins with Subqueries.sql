select il.invoice_id, il.track_id, ta.artist_name
from chinook.invoice_line il
inner join (select t.track_id , ar.name artist_name
from chinook.track t
inner join  chinook.album al 
on al.album_id = t.album_id
inner join chinook.artist ar
on ar.artist_id = al.artist_id
) ta
on ta.track_id = il.track_id
order by 1 
limit 5;

select  ta.artist_name artist, count(*) track_purchased
from chinook.invoice_line il
inner join (select t.track_id , ar.name artist_name
from chinook.track t
inner join  chinook.album al 
on al.album_id = t.album_id
inner join chinook.artist ar
on ar.artist_id = al.artist_id
) ta
on ta.track_id = il.track_id 
group by 1
order by 2 desc
limit 10;

select ta.album, ta.artist, count(*) track_purchased
from chinook.invoice_line il
inner join ( select t.track_id, al.title album, ar.name artist
from chinook.track t
inner join chinook.album al
on al.album_id = t.album_id
inner join chinook.artist ar
on ar.artist_id = al.artist_id
) ta
on ta.track_id = il.track_id
group by 1,2
order by 3 desc
limit 5;
