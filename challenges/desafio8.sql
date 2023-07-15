SELECT
	a.artist_name AS artista,
    al.album_name AS album
FROM
	artists AS a
INNER JOIN
	albums AS al ON a.artist_id = al.artist_id
WHERE
	a.artist_name = 'Elis Regina'
ORDER BY album ASC, artista;