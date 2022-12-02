SELECT
FORMAT(MIN(pl.price_plan),2) AS faturamento_minimo,
FORMAT(MAX(pl.price_plan),2) AS faturamento_maximo,
FORMAT(AVG(pl.price_plan),2) AS faturamento_medio,
FORMAT(SUM(pl.price_plan),2) AS faturamento_total
FROM SpotifyClone.plans as pl
INNER JOIN SpotifyClone.users AS usr ON usr.id_plan = pl.id_plan;