SELECT COUNT(s.song_name) AS cancoes,
COUNT(DISTINCT(a.id_artist)) AS artistas,
COUNT(DISTINCT(a.album_name)) AS albuns
FROM SpotifyClone.songs s
INNER JOIN SpotifyClone.albums a
ON a.id_album = s.id_album