SELECT u.user_name AS usuario,
COUNT(h.id_song) AS qtde_musicas_ouvidas,
ROUND(SUM((s.duration_seconds)/ 60),2) AS total_minutos
FROM SpotifyClone.history h
INNER JOIN SpotifyClone.users u ON u.id_user = h.id_user
INNER JOIN SpotifyClone.songs s ON h.id_song = s.id_song 
GROUP BY u.user_name ASC