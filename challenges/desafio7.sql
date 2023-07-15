SELECT
	a.artist_name AS artista,
    al.album_name AS album,
    COUNT(f.artist_id) AS pessoas_seguidoras
FROM artists AS a
INNER JOIN albums AS al
	ON al.artist_id = a.artist_id
INNER JOIN following_artists AS f
	ON a.artist_id = f.artist_id
GROUP BY artista, album
ORDER BY pessoas_seguidoras DESC, artista, album;