SELECT msc.name_music AS cancao, COUNT(*) as reproducoes
FROM SpotifyClone.musics as msc
INNER JOIN SpotifyClone.historic as his ON his.id_music = msc.id_music
GROUP BY cancao ORDER BY reproducoes DESC, msc.name_music ASC LIMIT 2;