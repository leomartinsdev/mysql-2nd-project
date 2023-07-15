SELECT
	s.song_name AS cancao,
  COUNT(h.song_id) AS reproducoes
FROM songs AS s
	INNER JOIN history AS h
		ON s.song_id = h.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;