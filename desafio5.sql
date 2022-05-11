SELECT s.song_name AS cancao,
COUNT(*) AS reproducoes
FROM SpotifyClone.songs s 
INNER JOIN SpotifyClone.history h ON s.id_song = h.id_song
GROUP BY s.song_name
HAVING COUNT(*)>=2
ORDER BY s.song_name ASC
LIMIT 2