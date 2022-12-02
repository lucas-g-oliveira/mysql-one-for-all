SELECT usr.name_user AS usuario, IF(YEAR(MAX(his.played)) < 2021, 'Usuário inativo','Usuário ativo') as status_usuario
FROM SpotifyClone.users as usr
INNER JOIN SpotifyClone.historic AS his ON his.id_user = usr.id_user
GROUP BY usr.name_user ORDER BY usr.name_user;