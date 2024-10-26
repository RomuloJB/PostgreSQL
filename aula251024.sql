// dontpad.com/mauricioifpr

delete from vendaitem where idvenda in (
select venda.idvenda
from venda
inner join vendaitem on venda.idvenda = vendaitem.idvenda
where venda.idcliente = 5
group by venda.idvenda)

select from venda
where idcliente = 4 or idcliente = 4 ort idcliente = 6

select = from venda
where idcliente in (2, 4, 6)
order by idcliente

//ex 1
//escreva os comandos delete para apagar todas 
//as vendas e vendaitens dos clientes com id 2, 3, 4

delete from venda
where idcliente in (2, 3, 4)

select
idproduto,
count(idproduto) from vendaitem
group by idproduto
order by 2 desc limit 5

//escreva os deletes para apagar as vendas e vendaitem das vendas que
//foram vendidos os produtos 5 10 e 15

delete from vendaitem
where idvenda in (
select idvenda
from vendaitem
where idproduto in (5, 10, 15)
group by idvenda)


delete from venda where idvenda in(
select venda.idvenda 
from venda
left join vendaitem on venda.idvenda = vendaitem.idvenda
where vendaitem.idvenda is null
)

delete from produto where idproduto in (5,10,15)
