SELECT COUNT(h.id_song) AS quantidade_musicas_no_historico 
FROM SpotifyClone.history h
INNER JOIN SpotifyClone.users u ON h.id_user = u.id_user
WHERE u.user_name = "Bill"