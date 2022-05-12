SELECT s.song_name AS nome, COUNT(h.id_song) AS reproducoes
FROM SpotifyClone.songs s
INNER JOIN SpotifyClone.history h ON s.id_song = h.id_song
INNER JOIN SpotifyClone.users u ON h.id_user = u.id_user
INNER JOIN SpotifyClone.plans p ON p.id_plan = u.id_plan
WHERE p.type_plan = "Gratuito" OR p.type_plan = "Pessoal"
GROUP BY nome
ORDER BY nome