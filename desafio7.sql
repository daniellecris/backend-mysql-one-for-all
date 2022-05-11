SELECT c.artist_name AS artista,
a.album_name AS album,
COUNT(f.id_user) AS seguidores
FROM SpotifyClone.artists c
INNER JOIN SpotifyClone.favorites f ON c.id_artist = f.id_artist
INNER JOIN SpotifyClone.albums a ON a.id_artist = c.id_artist
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album 