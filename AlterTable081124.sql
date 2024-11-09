//codigo fonte dontpad.com/mauricioifpr
  
// 1. adicionar na tabela cliente o campo nomeConjuge que é uma string com 50 carac. e valor padrao null
alter table cliente add column nomeConjuge varchar(50) default null;

// 2. remover campo acrescimo e parcelas da tabela venda
alter table venda drop column acrescimo, drop column parcelas;

SELECT idvenda, quantidade, descricao
FROM public.produtos;
