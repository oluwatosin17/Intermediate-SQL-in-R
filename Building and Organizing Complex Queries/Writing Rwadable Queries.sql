select
		ta.artist_name artist,
        count(*) track_sold
from chinook.invoice_line
inner join ( 
			 select 
					track_id ,
					ar.name artist_name
			 from chinook.track t
             inner join chinook.album al
             on al.album_id = t.album_id
             inner join chinook.artist ar
             on ar.artist_id = al.artist_id
			) ta
group by 1
order by 2 desc
limit 10;