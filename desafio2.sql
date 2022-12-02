
SELECT
count(DISTINCT msc.id_music) AS cancoes,
count(DISTINCT art.id_artist) AS artistas,
count(DISTINCT alb.id_album) AS albuns
FROM
SpotifyClone.musics as msc
INNER JOIN SpotifyClone.albuns as alb
INNER JOIN SpotifyClone.artists as art;