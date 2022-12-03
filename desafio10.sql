SELECT msc.name_music as nome, COUNT(*) as reproducoes
FROM SpotifyClone.users AS usr
INNER JOIN SpotifyClone.plans AS pln ON pln.id_plan = usr.id_plan
AND (pln.name_plan = 'gratuito' OR pln.name_plan = 'pessoal')
INNER JOIN SpotifyClone.historic AS hic ON hic.id_user = usr.id_user
INNER JOIN SpotifyClone.musics AS msc ON msc.id_music = hic.id_music
GROUP BY msc.name_music ORDER BY msc.name_music;