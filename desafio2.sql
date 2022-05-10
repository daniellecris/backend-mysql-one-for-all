SELECT COUNT(s.song_name) AS cancoes,
COUNT(DISTINCT(d.id_artist)) AS artistas,
COUNT(DISTINCT(d.album_name)) AS albuns
FROM SpotifyClone.songs s
INNER JOIN SpotifyClone.albums d
ON d.id_album = s.id_album