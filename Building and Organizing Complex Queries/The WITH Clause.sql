with track_info as
	( select
		t.name,
        ar.artist_id artist,
        al.title album_name,
        mt.name media_type,
        g.name genre,
        t.milliseconds length_milliseconds
from chinook.track t
inner join chinook.media_type mt
on mt.media_type_id = t.media_type_id
inner join chinook.genre g
on g.genre_id = t.genre_id
inner join chinook.album al
on al.album_id = t.album_id
inner join chinook.artist ar
on ar.artist_id = al.artist_id
)
select * from track_info
where album_name = "Jagged Little Pill";

with playlist_info as 
		( select 
				p.playlist_id playlist_id,
                p.name playlist_name,
                t.name track_name,
                (t.milliseconds/1000) length_seconds
        from chinook.playlist p
        left join chinook.playlist_track pt
        on pt.playlist_id = p.playlist_id
        left join chinook.track t
        on t.track_id = pt.track_id
         
		)
	select playlist_id,playlist_name,count(track_name) number_of_tracks, sum(length_seconds) length_seconds from playlist_info
    group by 1 , 2
	order by playlist_id;
    
    
   
    
        