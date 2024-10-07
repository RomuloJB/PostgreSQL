/*
- nome do cliente
- total de vendas do cliente
- nome do produto mais comprado pelo cliente
*/

SELECT
a.nome "Nome do Cliente",
(SELECT b.nomecidade
FROM cidade b
WHERE b.idcidade = a.idcliente) "Nome da Cidade",
(SELECT
SUM(c.valorliquido)
FROM venda c
WHERE c.idcliente = a.idcliente) "Total de Vendas"
FROM cliente a

--O que o cliente 1 mais comprou?
SELECT
(SELECT c.decricao FROM produto c WHERE c.idproduto - a.idproduto) nomeproduto,
a.idproduto,
SUM(a.quantidade) AS qtde
FROM vendaitem a
INNER JOIN venda b ON a.idvenda = b.idvenda
WHERE b.cliente = 1
GROUP BY b.idproduto
ORDER BY qtde DESC
limit 1 "Produto mais Vendido"

