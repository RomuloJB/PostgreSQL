SELECT 
a.idcidade, 
a.nomecidade,
COUNT(b.idcidade) AS qtd_clientes
FROM cidade a
INNER JOIN cliente b ON a.idcidade = b.idcidade
GROUP BY a.idcidade
ORDER BY a.nomecidade

SELECT 
a.idcidade, 
a.nomecidade,
COUNT(b.idcidade) AS qtd_clientes
FROM cidade a
LEFT JOIN cliente b ON a.idcidade = b.idcidade
GROUP BY a.idcidade
ORDER BY a.nomecidade


SELECT 
a.idcidade, 
a.nomecidade,
COUNT(b.idcidade) AS qtd_clientes
FROM cidade a
LEFT JOIN cliente b ON a.idcidade = b.idcidade
WHERE b.idcidade IS NULL
GROUP BY a.idcidade --HAVING COUNT(b.idcidade) = 0
ORDER BY a.nomecidade


SELECT 
a.idcidade, 
a.nomecidade,
COUNT(b.idcidade) AS qtd_clientes
FROM cidade a
INNER JOIN cliente b ON a.idcidade = b.idcidade
GROUP BY a.idcidade
ORDER BY a.nomecidade DESC
LIMIT 1
