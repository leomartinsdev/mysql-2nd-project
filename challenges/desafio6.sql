SELECT
	MIN(p.plan_price) AS faturamento_minimo,
    MAX(p.plan_price) AS faturamento_maximo,
    ROUND(AVG(p.plan_price), 2) AS faturamento_medio,
    SUM(plan_price) AS faturamento_total
FROM plans AS p
INNER JOIN users AS u
ON p.plan_id = u.plan_id;