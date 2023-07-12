SELECT
	COUNT(DISTINCT s.song_id) AS cancoes,
	COUNT(DISTINCT ar.artist_id) AS artistas,
	COUNT(DISTINCT ab.album_id) AS albuns
FROM artists AS ar
INNER JOIN albums AS ab
ON ab.artist_id = ar.artist_id
INNER JOIN songs AS s
ON s.album_id = ab.album_id;
