SELECT DISTINCT(u.user_name) AS usuario,
IF(MAX(YEAR(h.player_date))=2021,'Usuário ativo','Usuário inativo') AS condicao_usuario
FROM SpotifyClone.users u
INNER JOIN SpotifyClone.history h ON u.id_user = h.id_user
GROUP BY u.user_name
ORDER BY u.user_name ASC