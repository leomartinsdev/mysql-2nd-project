SELECT
  u.user_name AS pessoa_usuaria,
  COUNT(h.song_id) AS musicas_ouvidas,
  SUM(ROUND(duration / 60, 2)) AS total_minutos
FROM users as u
  INNER JOIN history AS h
    ON u.user_id = h.user_id
  INNER JOIN songs AS s
    ON h.song_id = s.song_id
GROUP BY u.user_name
ORDER BY pessoa_usuaria ASC;
