SELECT
usr.name_user AS usuario,
COUNT(msc.id_music) as qt_de_musicas_ouvidas,
ROUND(sum(msc.lenght)/60,2) as  total_minutos
FROM SpotifyClone.users AS usr
INNER JOIN SpotifyClone.historic AS his ON his.id_user = usr.id_user
INNER JOIN SpotifyClone.musics AS msc ON msc.id_music = his.id_music
GROUP BY usuario order by usuario;