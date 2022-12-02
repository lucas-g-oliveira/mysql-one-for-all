SELECT art.name_artist as artista, alb.name_album as album, COUNT(fol.id_artist) as seguidores
FROM SpotifyClone.albuns as alb
INNER JOIN SpotifyClone.artists as art ON art.id_artist = alb.id_artist
INNER JOIN SpotifyClone.folow_artist as fol ON fol.id_artist = art.id_artist
GROUP BY artista, album ORDER BY seguidores DESC, artista, album;