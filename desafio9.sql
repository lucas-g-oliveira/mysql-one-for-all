SELECT COUNT(*) as quantidade_musicas_no_historico
FROM SpotifyClone.historic as his
INNER JOIN SpotifyClone.users as usr ON his.id_user = usr.id_user AND usr.name_user = 'Barbara Liskov';