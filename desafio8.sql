SELECT art.name_artist as artista, alb.name_album as album
FROM SpotifyClone.albuns as alb
INNER JOIN SpotifyClone.artists as art ON art.id_artist = alb.id_artist
HAVING art.name_artist = 'Elis Regina';