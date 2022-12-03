SELECT name_music as nome_musica,
CASE
WHEN name_music LIKE '%Bard%' THEN REPLACE(name_music,'Bard', 'QA')
WHEN name_music LIKE '%Amar%' THEN REPLACE(name_music,'Amar', 'Code Review')
WHEN name_music LIKE '%Pais%' THEN REPLACE(name_music,'Pais', 'Pull Requests')
WHEN name_music LIKE '%SOUL%' THEN REPLACE(name_music,'SOUL', 'CODE')
WHEN name_music LIKE '%SUPERSTAR%' THEN REPLACE(name_music,'SUPERSTAR', 'SUPERDEV')
END AS novo_nome
FROM SpotifyClone.musics
WHERE 
name_music LIKE '%Bard%'
OR name_music LIKE'%Amar%'
OR name_music LIKE'%Pais%'
OR name_music LIKE'%SOUL%'
OR name_music LIKE'%SUPERSTAR%'
ORDER BY name_music DESC;