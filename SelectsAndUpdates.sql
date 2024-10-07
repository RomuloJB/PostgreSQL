
--listar clientes sem vendas
SELECT
a.idcliente,
a.nome
FROM cliente a
LEFT JOIN venda b ON a.idcliente = b.idcliente
WHERE b.idcliente IS NULL

--listar o total de cada venda por codigo
SELECT
idvenda,
SUM(valortotal)
FROM vendaitem
GROUP BY idvenda


SELECT
a.idvenda,
(SELECT SUM(b.valortotal) FROM vendaitem b WHERE b.idvenda = a.idvenda GROUP BY b.idvenda)
FROM venda a

--atualização do valorbruto
UPDATE venda
SET valorbruto = (
SELECT SUM(vendaitem.valortotal)
FROM vendaitem
WHERE vendaitem.idvenda = venda.idvenda
GROUP BY vendaitem.idvenda
)

--faz a comparação
SELECT
a.idvenda,
a.valorbruto,
(SELECT SUM(vendaitem.valortotal)
FROM vendaitem
WHERE vendaitem.idvenda = a.idvenda
GROUP BY vendaitem.idvenda
)
FROM venda a
ORDER BY 3

--12% de desconto para pagamentos sem parcelas
UPDATE venda SET
desconto = (valorbruto * 0.12)
WHERE parcelas = 0

--3% de acrescimo nas vendas acima de 1 parcela
UPDATE venda SET
acrescimo = (valorbruto * 0.03)
WHERE parcelas > 0

--Corrigindo valor liquido
UPDATE venda SET
valorliquido = (valorbruto - desconto + acrescimo)


SELECT
a.idcliente,
a.nome,
COUNT(b.idcliente) AS qtdvenda,
MAX(b.valorliquido) AS maiorvenda,
MIN(b.valorliquido) AS menorvenda,
ROUND(AVG(b.valorliquido), 2) AS mediavenda,
SUM(b.valorliquido) AS totalvenda
FROM cliente a
INNER JOIN venda b ON a.idcliente = b.idcliente
GROUP BY a.idcliente



--select para conferencia
SELECT * from venda order by idvenda
