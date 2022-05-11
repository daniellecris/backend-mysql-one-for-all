SELECT a.artist_name AS artista, d.album_name AS album
FROM SpotifyClone.artists a
INNER JOIN SpotifyClone.albums d
WHERE a.artist_name = "Walter Phoenix"
ORDER BY album
LIMIT 3,2