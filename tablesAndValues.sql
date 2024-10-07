CREATE TABLE cidade(
idcidade serial primary key,
nomecidade varchar(100)
);
INSERT INTO public.cidade(idcidade, nomecidade)
VALUES (1,'ALTO PARANA'),(2,'MARINGA'),(3,'LONDRINA'),(4,'CURITIBA'),
(5,'PARANAVAI'),(6,'AMAPORA'),(7,'LOANDA'),(8,'TAMBOARA'),(9,'NOVA LONDRINA'),
(10,'MIRADOR');

CREATE TABLE bairro(
idbairro serial primary key,
nomebairro varchar(100)
);
 INSERT INTO public.bairro(idbairro, nomebairro)
VALUES (1,'CENTRO'),(2,'JARDIM DO SOL'),(3,'JARDIM DA LUZ'),(4,'PARQUE DOS IPES'),
(5,'PARQUE DOS COQUEIROS'),(6,'JARDIM SÃO JOSE'),(7,'JARDIM MARACANA'),(8,'JARDIM DAS NAÇOES'),
(9,'JARDIM SOL NASCENTE'),(10,'PARQUE INDUSTRIAL'),(11,'JARDIM IPE'),(12,'JARDIM DAS GREVILHAS');

CREATE TABLE funcionario(
idfuncionario serial primary key,
nomefuncionario varchar(100)
);
INSERT INTO public.funcionario(idfuncionario, nomefuncionario) VALUES (1, 'MARIA'),
(2, '"PEDRO'),(3, 'ANA'), (4, 'MARCELO'), (5, 'CRISTINA'), (6, 'LUCAS'),
(7, 'SANDRA'), (8, 'ANTONIO'), (9, 'BRUNA'), (10, 'DANIEL');

CREATE TABLE produto(
idproduto serial primary key,
descricao varchar(100),
custo decimal(10,2) default 0,
vrvenda decimal(10,2) default 0,
estoque integer not null default 0);

INSERT INTO public.produto(idproduto, descricao, custo, vrvenda, estoque)
VALUES 
(1, 'ARROZ', 14.95, 29.89, 99),
(2, 'FEIJÃO', 4.00, 7.99, 171),
(3, 'TRIGO', 7.75, 15.49, 68),
(4, 'AÇUCAR', 6.30, 12.59, 25),
(5, 'SAL', 1.85, 3.69, 146),
(6, 'OLEO DE SOJA', 2.40, 4.79, 92),
(7, 'CAFÉ', 7.45, 14.89, 90),
(8, 'LEITE', 2.25, 4.49, 39),
(9, 'MILHO', 1.80, 3.59, 79),
(10, 'ERVILHA', 2.10, 4.19, 128),
(11, 'AZEITE', 17.40, 34.79, 123),
(12, 'CATCHUP', 4.50, 8.99, 41),
(13, 'MOSTARDA', 2.50, 4.99, 102),
(14, 'MAIONESE', 3.90, 7.79, 106),
(15, 'GUARANA 2L', 3.50, 6.99, 82),
(16, 'GUARANA 1L', 2.00, 3.99, 56),
(17, 'GUARANA 660ML', 1.50, 2.99, 170),
(18, 'SABONETE', 1.25, 2.49, 68),
(19, 'PASTA DE DENTE', 1.70, 3.39, 112),
(20, 'PAPEL HIGIENICO', 9.65, 19.29, 7),
(21, 'DETERGENTE', 1.10, 2.19, 11),
(22, 'SABÃO EM BARRA', 5.45, 10.89, 198),
(23, 'SABÃO EM PÓ', 13.00, 25.99, 145),
(24, 'MARGARINA', 4.00, 7.99, 167),
(25, 'MANTEIGA', 5.85, 11.69, 45),
(26, 'MACARRÃO', 2.15, 4.29, 158),
(27, 'FARINHA DE MANDIOCA', 4.35, 8.69, 125),
(28, 'FUBÁ', 1.50, 2.99, 194),
(29, 'MOLHO DE TOMATE', 1.65, 3.29, 163),
(30, 'ESTRATO DE TOMATE', 2.75, 5.49, 26);

CREATE TABLE cliente(
idcliente serial primary key,
nome varchar(100),
cpf varchar(11) unique,
rg varchar(15),
dtnascimento date,
celular varchar(20),
endereco varchar(100),
idbairro integer,
idcidade integer,
FOREIGN KEY (idbairro) REFERENCES bairro(idbairro), 
FOREIGN KEY (idcidade) REFERENCES cidade(idcidade)); 

INSERT INTO public.cliente(idcliente, nome, cpf, rg, dtnascimento, celular, endereco, idbairro, idcidade) VALUES 
(1,'KEVIN AQUINO BARROSO','88716613845','52918536-78','1990-05-19','(44) 88537-4415','RUA KELY JANUARIO JANUARIO 890',9,2);
INSERT INTO public.cliente(idcliente, nome, cpf, rg, dtnascimento, celular, endereco, idbairro, idcidade) VALUES 
(2,'CAMILA ANTUNES OLIVEIRA','00587380024','31561938-60','1988-11-21','(44) 92040-9479','RUA NATAN SANTANA MORAES 2012',3,7);
INSERT INTO public.cliente(idcliente, nome, cpf, rg, dtnascimento, celular, endereco, idbairro, idcidade) VALUES 
(3,'SAMUEL DE SOUZA','61984433431','64826617-48','1988-02-27','(44) 88208-0136','RUA TELMA BORGES TAVARES 1678',7,8);
INSERT INTO public.cliente(idcliente, nome, cpf, rg, dtnascimento, celular, endereco, idbairro, idcidade) VALUES 
(4,'KEVIN VELOSO FORTES','17718575604','71718338-72','1989-09-19','(44) 94128-5215','RUA TELMA BORGES TAVARES 2408',7,8);
INSERT INTO public.cliente(idcliente, nome, cpf, rg, dtnascimento, celular, endereco, idbairro, idcidade) VALUES 
(5,'JOANA DA COSTA CAMARGO','41330226667','99673054-40','1957-07-07','(44) 85453-2178','RUA TELMA BORGES TAVARES 1391',7,8);
INSERT INTO public.cliente(idcliente, nome, cpf, rg, dtnascimento, celular, endereco, idbairro, idcidade) VALUES 
(6,'CAMILA FERNANDES','71182880860','99283203-20','1955-02-04','(44) 97796-4053','RUA TELMA BORGES TAVARES 666',7,8);
INSERT INTO public.cliente(idcliente, nome, cpf, rg, dtnascimento, celular, endereco, idbairro, idcidade) VALUES 
(7,'SOLANGE AQUINO BEZERRA','80011123720','3589738-48','2001-10-02','(44) 85404-8794','RUA NATAN SANTANA MORAES 1045',3,7);
INSERT INTO public.cliente(idcliente, nome, cpf, rg, dtnascimento, celular, endereco, idbairro, idcidade) VALUES 
(8,'VERA NASCIMENTO RAMALHO','73189806826','61344028-26','1961-09-21','(44) 96912-7321','RUA TELMA BORGES TAVARES 1043',7,8);
INSERT INTO public.cliente(idcliente, nome, cpf, rg, dtnascimento, celular, endereco, idbairro, idcidade) VALUES 
(9,'SARA MENDES','53848375657','89056645-28','1971-08-13','(44) 88950-5589','RUA NATAN SANTANA MORAES 1947',3,7);
INSERT INTO public.cliente(idcliente, nome, cpf, rg, dtnascimento, celular, endereco, idbairro, idcidade) VALUES 
(10,'VINICIOS ARAUJO SIQUEIRA','36586999063','75809870-45','1980-11-03','(44) 99588-2062','RUA TELMA BORGES TAVARES 402',7,8);

CREATE TABLE venda(
idvenda serial primary key,
idcliente integer,
idfuncionario integer,
datavenda date,
valorbruto decimal(10,2) default 0,
desconto decimal(10,2) default 0,
acrescimo decimal(10,2) default 0,
valorliquido decimal(10,2) default 0,
parcelas integer,
FOREIGN KEY (idcliente) REFERENCES cliente(idcliente),
FOREIGN KEY (idfuncionario) REFERENCES funcionario(idfuncionario));
(´。＿。｀)

INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(1, 2, 3, '2024-09-06', 0.00, 0.00, 0.00, 0.00, 1);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(2, 9, 1, '2024-09-10', 0.00, 0.00, 0.00, 0.00, 3);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(3, 7, 5, '2024-09-08', 0.00, 0.00, 0.00, 0.00, 2);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(4, 3, 4, '2024-09-23', 0.00, 0.00, 0.00, 0.00, 0);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(5, 9, 4, '2024-09-23', 0.00, 0.00, 0.00, 0.00, 3);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(6, 6, 5, '2024-09-17', 0.00, 0.00, 0.00, 0.00, 0);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(7, 3, 3, '2024-08-30', 0.00, 0.00, 0.00, 0.00, 3);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(8, 1, 3, '2024-09-21', 0.00, 0.00, 0.00, 0.00, 1);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(9, 7, 9, '2024-09-18', 0.00, 0.00, 0.00, 0.00, 0);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(10, 5, 8, '2024-09-19', 0.00, 0.00, 0.00, 0.00, 0);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(11, 5, 1, '2024-09-04', 0.00, 0.00, 0.00, 0.00, 2);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(12, 1, 3, '2024-09-15', 0.00, 0.00, 0.00, 0.00, 0);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(13, 9, 8, '2024-08-29', 0.00, 0.00, 0.00, 0.00, 0);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(14, 6, 3, '2024-09-05', 0.00, 0.00, 0.00, 0.00, 3);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(15, 5, 2, '2024-09-17', 0.00, 0.00, 0.00, 0.00, 2);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(16, 9, 4, '2024-09-08', 0.00, 0.00, 0.00, 0.00, 1);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(17, 7, 8, '2024-08-31', 0.00, 0.00, 0.00, 0.00, 3);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(18, 9, 5, '2024-09-08', 0.00, 0.00, 0.00, 0.00, 3);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(19, 7, 3, '2024-09-26', 0.00, 0.00, 0.00, 0.00, 1);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(20, 2, 6, '2024-09-08', 0.00, 0.00, 0.00, 0.00, 0);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(21, 6, 2, '2024-09-13', 0.00, 0.00, 0.00, 0.00, 2);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(22, 5, 4, '2024-09-08', 0.00, 0.00, 0.00, 0.00, 1);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(23, 1, 3, '2024-09-18', 0.00, 0.00, 0.00, 0.00, 0);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(24, 2, 4, '2024-09-14', 0.00, 0.00, 0.00, 0.00, 3);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(25, 2, 3, '2024-09-23', 0.00, 0.00, 0.00, 0.00, 0);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(26, 1, 2, '2024-09-03', 0.00, 0.00, 0.00, 0.00, 1);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(27, 5, 8, '2024-09-24', 0.00, 0.00, 0.00, 0.00, 3);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(28, 2, 3, '2024-09-03', 0.00, 0.00, 0.00, 0.00, 2);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(29, 3, 1, '2024-09-10', 0.00, 0.00, 0.00, 0.00, 3);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(30, 6, 6, '2024-09-26', 0.00, 0.00, 0.00, 0.00, 0);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(31, 3, 7, '2024-08-30', 0.00, 0.00, 0.00, 0.00, 1);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(32, 9, 8, '2024-09-23', 0.00, 0.00, 0.00, 0.00, 3);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(33, 8, 9, '2024-09-01', 0.00, 0.00, 0.00, 0.00, 3);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(34, 2, 4, '2024-09-11', 0.00, 0.00, 0.00, 0.00, 0);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(35, 9, 5, '2024-09-25', 0.00, 0.00, 0.00, 0.00, 2);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(36, 9, 8, '2024-08-30', 0.00, 0.00, 0.00, 0.00, 0);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(37, 1, 5, '2024-09-25', 0.00, 0.00, 0.00, 0.00, 1);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(38, 5, 7, '2024-09-06', 0.00, 0.00, 0.00, 0.00, 1);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(39, 8, 1, '2024-09-05', 0.00, 0.00, 0.00, 0.00, 1);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(40, 9, 6, '2024-09-15', 0.00, 0.00, 0.00, 0.00, 1);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(41, 8, 6, '2024-09-22', 0.00, 0.00, 0.00, 0.00, 0);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(42, 3, 3, '2024-09-24', 0.00, 0.00, 0.00, 0.00, 2);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(43, 6, 8, '2024-08-29', 0.00, 0.00, 0.00, 0.00, 3);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(44, 1, 9, '2024-08-31', 0.00, 0.00, 0.00, 0.00, 0);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(45, 3, 7, '2024-08-30', 0.00, 0.00, 0.00, 0.00, 2);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(46, 2, 2, '2024-09-21', 0.00, 0.00, 0.00, 0.00, 3);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(47, 8, 4, '2024-09-04', 0.00, 0.00, 0.00, 0.00, 0);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(48, 5, 8, '2024-09-07', 0.00, 0.00, 0.00, 0.00, 3);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(49, 3, 1, '2024-09-19', 0.00, 0.00, 0.00, 0.00, 3);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(50, 3, 8, '2024-09-24', 0.00, 0.00, 0.00, 0.00, 3);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(51, 8, 3, '2024-09-09', 0.00, 0.00, 0.00, 0.00, 0);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(52, 2, 6, '2024-09-04', 0.00, 0.00, 0.00, 0.00, 0);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(53, 4, 4, '2024-09-21', 0.00, 0.00, 0.00, 0.00, 3);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(54, 9, 3, '2024-08-30', 0.00, 0.00, 0.00, 0.00, 0);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(55, 6, 4, '2024-08-30', 0.00, 0.00, 0.00, 0.00, 1);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(56, 7, 7, '2024-09-11', 0.00, 0.00, 0.00, 0.00, 2);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(57, 3, 1, '2024-09-25', 0.00, 0.00, 0.00, 0.00, 3);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(58, 1, 6, '2024-09-21', 0.00, 0.00, 0.00, 0.00, 1);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(59, 6, 1, '2024-09-16', 0.00, 0.00, 0.00, 0.00, 0);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(60, 7, 9, '2024-08-30', 0.00, 0.00, 0.00, 0.00, 1);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(61, 6, 5, '2024-08-29', 0.00, 0.00, 0.00, 0.00, 1);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(62, 5, 9, '2024-09-01', 0.00, 0.00, 0.00, 0.00, 3);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(63, 1, 9, '2024-09-09', 0.00, 0.00, 0.00, 0.00, 1);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(64, 7, 9, '2024-09-19', 0.00, 0.00, 0.00, 0.00, 2);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(65, 7, 2, '2024-09-24', 0.00, 0.00, 0.00, 0.00, 3);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(66, 1, 1, '2024-09-04', 0.00, 0.00, 0.00, 0.00, 3);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(67, 4, 7, '2024-09-05', 0.00, 0.00, 0.00, 0.00, 3);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(68, 8, 3, '2024-09-17', 0.00, 0.00, 0.00, 0.00, 3);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(69, 8, 3, '2024-09-01', 0.00, 0.00, 0.00, 0.00, 3);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(70, 6, 9, '2024-09-24', 0.00, 0.00, 0.00, 0.00, 1);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(71, 2, 4, '2024-09-12', 0.00, 0.00, 0.00, 0.00, 0);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(72, 1, 5, '2024-09-05', 0.00, 0.00, 0.00, 0.00, 3);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(73, 5, 7, '2024-09-08', 0.00, 0.00, 0.00, 0.00, 2);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(74, 8, 4, '2024-09-23', 0.00, 0.00, 0.00, 0.00, 1);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(75, 3, 9, '2024-09-11', 0.00, 0.00, 0.00, 0.00, 1);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(76, 5, 1, '2024-09-04', 0.00, 0.00, 0.00, 0.00, 0);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(77, 4, 4, '2024-09-23', 0.00, 0.00, 0.00, 0.00, 3);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(78, 7, 1, '2024-09-04', 0.00, 0.00, 0.00, 0.00, 2);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(79, 4, 3, '2024-09-04', 0.00, 0.00, 0.00, 0.00, 1);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(80, 5, 2, '2024-09-05', 0.00, 0.00, 0.00, 0.00, 1);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(81, 5, 7, '2024-09-15', 0.00, 0.00, 0.00, 0.00, 3);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(82, 1, 4, '2024-09-01', 0.00, 0.00, 0.00, 0.00, 0);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(83, 7, 6, '2024-09-18', 0.00, 0.00, 0.00, 0.00, 2);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(84, 2, 2, '2024-09-26', 0.00, 0.00, 0.00, 0.00, 1);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(85, 2, 1, '2024-09-08', 0.00, 0.00, 0.00, 0.00, 3);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(86, 8, 7, '2024-08-30', 0.00, 0.00, 0.00, 0.00, 1);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(87, 6, 3, '2024-09-16', 0.00, 0.00, 0.00, 0.00, 0);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(88, 3, 7, '2024-09-22', 0.00, 0.00, 0.00, 0.00, 1);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(89, 6, 8, '2024-09-10', 0.00, 0.00, 0.00, 0.00, 3);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(90, 5, 7, '2024-09-20', 0.00, 0.00, 0.00, 0.00, 2);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(91, 6, 1, '2024-09-19', 0.00, 0.00, 0.00, 0.00, 1);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(92, 8, 3, '2024-09-20', 0.00, 0.00, 0.00, 0.00, 2);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(93, 3, 3, '2024-09-07', 0.00, 0.00, 0.00, 0.00, 3);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(94, 1, 7, '2024-09-01', 0.00, 0.00, 0.00, 0.00, 0);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(95, 7, 1, '2024-09-04', 0.00, 0.00, 0.00, 0.00, 0);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(96, 2, 3, '2024-09-02', 0.00, 0.00, 0.00, 0.00, 3);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(97, 2, 3, '2024-09-17', 0.00, 0.00, 0.00, 0.00, 0);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(98, 5, 5, '2024-09-10', 0.00, 0.00, 0.00, 0.00, 0);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(99, 1, 5, '2024-09-08', 0.00, 0.00, 0.00, 0.00, 2);
INSERT INTO public.venda(idvenda, idcliente, idfuncionario, datavenda, valorbruto, desconto, acrescimo, valorliquido, parcelas) VALUES 
(100, 3, 9, '2024-09-07', 0.00, 0.00, 0.00, 0.00, 1);

CREATE TABLE vendaitem(
idvendaitem serial primary key,
idvenda integer,
idproduto integer,
quantidade integer,
valorunitario decimal(10,2) default 0,
valortotal decimal(10,2) default 0,
FOREIGN KEY (idvenda) REFERENCES venda(idvenda),
FOREIGN KEY (idproduto) REFERENCES produto(idproduto));

INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(1, 1, 18, 34, 2.49, 84.66); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(2, 1, 3, 37, 15.49, 573.13); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(3, 1, 18, 20, 2.49, 49.80); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(4, 1, 7, 22, 14.89, 327.58); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(5, 1, 19, 17, 3.39, 57.63); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(6, 1, 16, 32, 3.99, 127.68); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(7, 2, 6, 4, 4.79, 19.16); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(8, 2, 21, 35, 2.19, 76.65); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(9, 3, 14, 27, 7.79, 210.33); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(10, 3, 6, 33, 4.79, 158.07); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(11, 3, 5, 20, 3.69, 73.80); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(12, 3, 11, 23, 34.79, 800.17); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(13, 3, 24, 46, 7.99, 367.54); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(14, 3, 13, 39, 4.99, 194.61); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(15, 3, 22, 13, 10.89, 141.57); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(16, 3, 16, 44, 3.99, 175.56); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(17, 4, 6, 8, 4.79, 38.32); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(18, 4, 6, 48, 4.79, 229.92); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(19, 4, 19, 1, 3.39, 3.39); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(20, 4, 15, 20, 6.99, 139.80); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(21, 4, 14, 7, 7.79, 54.53); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(22, 4, 4, 14, 12.59, 176.26); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(23, 4, 6, 18, 4.79, 86.22); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(24, 4, 29, 27, 3.29, 88.83); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(25, 4, 8, 15, 4.49, 67.35); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(26, 4, 7, 14, 14.89, 208.46); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(27, 5, 22, 40, 10.89, 435.60); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(28, 5, 24, 36, 7.99, 287.64); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(29, 5, 4, 18, 12.59, 226.62); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(30, 5, 29, 28, 3.29, 92.12); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(31, 5, 16, 5, 3.99, 19.95); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(32, 5, 16, 44, 3.99, 175.56); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(33, 5, 23, 5, 25.99, 129.95); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(34, 5, 11, 27, 34.79, 939.33); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(35, 6, 24, 29, 7.99, 231.71); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(36, 6, 2, 12, 7.99, 95.88); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(37, 7, 8, 27, 4.49, 121.23); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(38, 7, 13, 18, 4.99, 89.82); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(39, 7, 13, 3, 4.99, 14.97); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(40, 7, 27, 12, 8.69, 104.28); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(41, 7, 29, 26, 3.29, 85.54); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(42, 7, 3, 49, 15.49, 759.01); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(43, 7, 7, 23, 14.89, 342.47); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(44, 7, 19, 43, 3.39, 145.77); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(45, 7, 9, 49, 3.59, 175.91); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(46, 8, 7, 18, 14.89, 268.02); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(47, 8, 17, 39, 2.99, 116.61); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(48, 8, 5, 45, 3.69, 166.05); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(49, 8, 22, 2, 10.89, 21.78); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(50, 9, 17, 46, 2.99, 137.54); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(51, 9, 14, 30, 7.79, 233.70); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(52, 9, 21, 24, 2.19, 52.56); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(53, 9, 19, 10, 3.39, 33.90); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(54, 9, 10, 39, 4.19, 163.41); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(55, 9, 22, 5, 10.89, 54.45); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(56, 10, 26, 49, 4.29, 210.21); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(57, 10, 20, 44, 19.29, 848.76); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(58, 10, 8, 19, 4.49, 85.31); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(59, 10, 10, 49, 4.19, 205.31); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(60, 10, 27, 5, 8.69, 43.45); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(61, 10, 18, 19, 2.49, 47.31); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(62, 10, 12, 34, 8.99, 305.66); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(63, 10, 20, 48, 19.29, 925.92); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(64, 10, 5, 26, 3.69, 95.94); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(65, 10, 25, 46, 11.69, 537.74); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(66, 11, 25, 45, 11.69, 526.05); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(67, 11, 15, 13, 6.99, 90.87); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(68, 11, 25, 25, 11.69, 292.25); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(69, 11, 28, 38, 2.99, 113.62); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(70, 11, 9, 48, 3.59, 172.32); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(71, 11, 5, 23, 3.69, 84.87); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(72, 11, 9, 29, 3.59, 104.11); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(73, 11, 21, 38, 2.19, 83.22); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(74, 11, 22, 36, 10.89, 392.04); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(75, 12, 16, 49, 3.99, 195.51); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(76, 12, 22, 19, 10.89, 206.91); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(77, 12, 19, 45, 3.39, 152.55); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(78, 12, 6, 49, 4.79, 234.71); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(79, 12, 5, 15, 3.69, 55.35); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(80, 12, 12, 28, 8.99, 251.72); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(81, 13, 10, 15, 4.19, 62.85); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(82, 13, 3, 10, 15.49, 154.90); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(83, 14, 11, 28, 34.79, 974.12); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(84, 14, 1, 13, 29.89, 388.57); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(85, 14, 28, 11, 2.99, 32.89); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(86, 14, 25, 41, 11.69, 479.29); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(87, 14, 14, 35, 7.79, 272.65); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(88, 15, 1, 25, 29.89, 747.25); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(89, 15, 8, 26, 4.49, 116.74); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(90, 15, 23, 29, 25.99, 753.71); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(91, 15, 11, 44, 34.79, 1530.76); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(92, 15, 11, 14, 34.79, 487.06); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(93, 15, 18, 13, 2.49, 32.37); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(94, 15, 10, 44, 4.19, 184.36); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(95, 15, 21, 1, 2.19, 2.19); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(96, 16, 9, 21, 3.59, 75.39); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(97, 16, 28, 3, 2.99, 8.97); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(98, 16, 15, 26, 6.99, 181.74); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(99, 16, 14, 8, 7.79, 62.32); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(100, 16, 1, 18, 29.89, 538.02); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(101, 16, 1, 23, 29.89, 687.47); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(102, 16, 2, 29, 7.99, 231.71); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(103, 17, 22, 45, 10.89, 490.05); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(104, 17, 16, 12, 3.99, 47.88); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(105, 17, 5, 7, 3.69, 25.83); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(106, 17, 16, 47, 3.99, 187.53); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(107, 18, 13, 32, 4.99, 159.68); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(108, 18, 20, 40, 19.29, 771.60); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(109, 18, 25, 19, 11.69, 222.11); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(110, 18, 24, 12, 7.99, 95.88); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(111, 18, 17, 10, 2.99, 29.90); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(112, 18, 4, 37, 12.59, 465.83); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(113, 19, 25, 18, 11.69, 210.42); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(114, 19, 24, 28, 7.99, 223.72); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(115, 19, 19, 24, 3.39, 81.36); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(116, 19, 19, 38, 3.39, 128.82); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(117, 20, 10, 11, 4.19, 46.09); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(118, 20, 4, 27, 12.59, 339.93); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(119, 20, 27, 13, 8.69, 112.97); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(120, 20, 23, 41, 25.99, 1065.59); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(121, 20, 15, 19, 6.99, 132.81); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(122, 20, 27, 23, 8.69, 199.87); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(123, 21, 24, 16, 7.99, 127.84); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(124, 21, 1, 12, 29.89, 358.68); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(125, 21, 4, 2, 12.59, 25.18); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(126, 21, 20, 5, 19.29, 96.45); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(127, 21, 6, 12, 4.79, 57.48); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(128, 22, 20, 37, 19.29, 713.73); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(129, 22, 21, 2, 2.19, 4.38); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(130, 22, 15, 34, 6.99, 237.66); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(131, 23, 9, 22, 3.59, 78.98); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(132, 23, 27, 48, 8.69, 417.12); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(133, 23, 20, 17, 19.29, 327.93); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(134, 23, 21, 41, 2.19, 89.79); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(135, 23, 1, 4, 29.89, 119.56); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(136, 24, 3, 23, 15.49, 356.27); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(137, 24, 3, 40, 15.49, 619.60); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(138, 24, 12, 46, 8.99, 413.54); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(139, 25, 13, 40, 4.99, 199.60); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(140, 25, 9, 32, 3.59, 114.88); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(141, 25, 26, 18, 4.29, 77.22); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(142, 25, 17, 17, 2.99, 50.83); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(143, 25, 25, 20, 11.69, 233.80); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(144, 26, 1, 31, 29.89, 926.59); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(145, 26, 12, 18, 8.99, 161.82); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(146, 26, 20, 23, 19.29, 443.67); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(147, 26, 3, 19, 15.49, 294.31); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(148, 26, 15, 27, 6.99, 188.73); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(149, 26, 7, 32, 14.89, 476.48); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(150, 26, 11, 46, 34.79, 1600.34); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(151, 26, 17, 20, 2.99, 59.80); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(152, 26, 14, 45, 7.79, 350.55); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(153, 27, 25, 18, 11.69, 210.42); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(154, 27, 20, 39, 19.29, 752.31); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(155, 27, 3, 33, 15.49, 511.17); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(156, 27, 17, 24, 2.99, 71.76); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(157, 27, 20, 11, 19.29, 212.19); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(158, 28, 1, 21, 29.89, 627.69); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(159, 28, 2, 4, 7.99, 31.96); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(160, 29, 4, 31, 12.59, 390.29); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(161, 29, 19, 1, 3.39, 3.39); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(162, 29, 4, 49, 12.59, 616.91); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(163, 29, 7, 2, 14.89, 29.78); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(164, 29, 9, 5, 3.59, 17.95); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(165, 29, 10, 16, 4.19, 67.04); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(166, 29, 15, 6, 6.99, 41.94); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(167, 29, 20, 38, 19.29, 733.02); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(168, 29, 25, 42, 11.69, 490.98); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(169, 30, 27, 23, 8.69, 199.87); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(170, 30, 9, 20, 3.59, 71.80); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(171, 30, 24, 24, 7.99, 191.76); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(172, 30, 5, 49, 3.69, 180.81); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(173, 30, 3, 2, 15.49, 30.98); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(174, 30, 24, 11, 7.99, 87.89); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(175, 30, 19, 29, 3.39, 98.31); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(176, 30, 24, 38, 7.99, 303.62); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(177, 31, 17, 28, 2.99, 83.72); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(178, 31, 13, 44, 4.99, 219.56); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(179, 32, 29, 48, 3.29, 157.92); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(180, 32, 28, 1, 2.99, 2.99); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(181, 32, 13, 4, 4.99, 19.96); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(182, 32, 7, 25, 14.89, 372.25); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(183, 32, 3, 43, 15.49, 666.07); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(184, 32, 27, 6, 8.69, 52.14); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(185, 32, 2, 13, 7.99, 103.87); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(186, 32, 3, 38, 15.49, 588.62); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(187, 32, 26, 11, 4.29, 47.19); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(188, 32, 27, 20, 8.69, 173.80); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(189, 33, 8, 49, 4.49, 220.01); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(190, 33, 20, 15, 19.29, 289.35); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(191, 33, 25, 11, 11.69, 128.59); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(192, 33, 20, 45, 19.29, 868.05); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(193, 33, 5, 16, 3.69, 59.04); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(194, 33, 11, 6, 34.79, 208.74); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(195, 33, 8, 30, 4.49, 134.70); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(196, 33, 10, 23, 4.19, 96.37); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(197, 34, 11, 43, 34.79, 1495.97); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(198, 34, 17, 6, 2.99, 17.94); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(199, 34, 4, 2, 12.59, 25.18); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(200, 34, 18, 29, 2.49, 72.21); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(201, 34, 25, 31, 11.69, 362.39); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(202, 34, 16, 40, 3.99, 159.60); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(203, 35, 9, 21, 3.59, 75.39); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(204, 35, 16, 25, 3.99, 99.75); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(205, 35, 14, 23, 7.79, 179.17); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(206, 35, 21, 1, 2.19, 2.19); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(207, 35, 1, 4, 29.89, 119.56); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(208, 35, 5, 45, 3.69, 166.05); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(209, 35, 11, 19, 34.79, 661.01); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(210, 35, 26, 48, 4.29, 205.92); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(211, 36, 22, 38, 10.89, 413.82); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(212, 36, 15, 15, 6.99, 104.85); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(213, 36, 7, 6, 14.89, 89.34); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(214, 36, 4, 15, 12.59, 188.85); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(215, 36, 5, 6, 3.69, 22.14); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(216, 36, 12, 7, 8.99, 62.93); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(217, 36, 20, 5, 19.29, 96.45); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(218, 36, 1, 49, 29.89, 1464.61); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(219, 36, 7, 37, 14.89, 550.93); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(220, 36, 11, 6, 34.79, 208.74); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(221, 37, 4, 36, 12.59, 453.24); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(222, 37, 9, 45, 3.59, 161.55); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(223, 37, 18, 19, 2.49, 47.31); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(224, 37, 24, 22, 7.99, 175.78); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(225, 37, 8, 28, 4.49, 125.72); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(226, 37, 29, 16, 3.29, 52.64); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(227, 38, 11, 26, 34.79, 904.54); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(228, 38, 22, 36, 10.89, 392.04); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(229, 38, 17, 14, 2.99, 41.86); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(230, 38, 17, 11, 2.99, 32.89); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(231, 38, 15, 32, 6.99, 223.68); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(232, 38, 21, 40, 2.19, 87.60); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(233, 38, 16, 12, 3.99, 47.88); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(234, 38, 18, 15, 2.49, 37.35); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(235, 39, 6, 20, 4.79, 95.80); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(236, 39, 15, 25, 6.99, 174.75); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(237, 39, 4, 27, 12.59, 339.93); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(238, 39, 22, 20, 10.89, 217.80); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(239, 40, 11, 6, 34.79, 208.74); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(240, 40, 2, 21, 7.99, 167.79); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(241, 40, 7, 30, 14.89, 446.70); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(242, 40, 4, 3, 12.59, 37.77); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(243, 40, 23, 19, 25.99, 493.81); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(244, 40, 23, 43, 25.99, 1117.57); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(245, 40, 22, 21, 10.89, 228.69); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(246, 40, 2, 22, 7.99, 175.78); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(247, 41, 14, 37, 7.79, 288.23); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(248, 41, 20, 47, 19.29, 906.63); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(249, 41, 21, 29, 2.19, 63.51); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(250, 41, 20, 32, 19.29, 617.28); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(251, 41, 5, 25, 3.69, 92.25); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(252, 41, 1, 3, 29.89, 89.67); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(253, 41, 23, 18, 25.99, 467.82); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(254, 41, 6, 21, 4.79, 100.59); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(255, 41, 29, 43, 3.29, 141.47); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(256, 42, 28, 32, 2.99, 95.68); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(257, 42, 7, 14, 14.89, 208.46); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(258, 42, 9, 26, 3.59, 93.34); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(259, 42, 1, 36, 29.89, 1076.04); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(260, 42, 15, 38, 6.99, 265.62); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(261, 43, 29, 19, 3.29, 62.51); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(262, 43, 22, 8, 10.89, 87.12); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(263, 43, 17, 6, 2.99, 17.94); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(264, 43, 3, 34, 15.49, 526.66); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(265, 44, 27, 5, 8.69, 43.45); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(266, 44, 12, 10, 8.99, 89.90); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(267, 44, 9, 8, 3.59, 28.72); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(268, 44, 26, 9, 4.29, 38.61); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(269, 44, 14, 48, 7.79, 373.92); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(270, 44, 16, 18, 3.99, 71.82); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(271, 44, 20, 29, 19.29, 559.41); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(272, 45, 1, 44, 29.89, 1315.16); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(273, 45, 27, 12, 8.69, 104.28); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(274, 45, 14, 31, 7.79, 241.49); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(275, 46, 15, 42, 6.99, 293.58); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(276, 46, 19, 3, 3.39, 10.17); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(277, 46, 18, 38, 2.49, 94.62); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(278, 46, 26, 12, 4.29, 51.48); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(279, 46, 22, 1, 10.89, 10.89); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(280, 46, 1, 44, 29.89, 1315.16); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(281, 46, 8, 18, 4.49, 80.82); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(282, 46, 3, 32, 15.49, 495.68); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(283, 47, 7, 28, 14.89, 416.92); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(284, 47, 5, 49, 3.69, 180.81); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(285, 47, 25, 19, 11.69, 222.11); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(286, 47, 4, 22, 12.59, 276.98); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(287, 47, 13, 17, 4.99, 84.83); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(288, 47, 1, 5, 29.89, 149.45); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(289, 47, 10, 46, 4.19, 192.74); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(290, 48, 2, 29, 7.99, 231.71); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(291, 48, 13, 22, 4.99, 109.78); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(292, 48, 11, 36, 34.79, 1252.44); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(293, 48, 2, 12, 7.99, 95.88); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(294, 49, 4, 36, 12.59, 453.24); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(295, 49, 7, 1, 14.89, 14.89); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(296, 49, 22, 48, 10.89, 522.72); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(297, 49, 20, 41, 19.29, 790.89); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(298, 49, 14, 18, 7.79, 140.22); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(299, 50, 19, 22, 3.39, 74.58); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(300, 50, 3, 33, 15.49, 511.17); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(301, 50, 11, 34, 34.79, 1182.86); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(302, 51, 9, 22, 3.59, 78.98); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(303, 51, 19, 1, 3.39, 3.39); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(304, 51, 7, 12, 14.89, 178.68); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(305, 51, 17, 38, 2.99, 113.62); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(306, 51, 23, 19, 25.99, 493.81); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(307, 52, 25, 21, 11.69, 245.49); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(308, 52, 19, 17, 3.39, 57.63); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(309, 52, 15, 7, 6.99, 48.93); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(310, 52, 6, 32, 4.79, 153.28); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(311, 52, 28, 48, 2.99, 143.52); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(312, 52, 19, 2, 3.39, 6.78); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(313, 53, 9, 4, 3.59, 14.36); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(314, 53, 14, 42, 7.79, 327.18); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(315, 53, 8, 15, 4.49, 67.35); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(316, 53, 16, 3, 3.99, 11.97); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(317, 53, 19, 23, 3.39, 77.97); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(318, 54, 3, 47, 15.49, 728.03); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(319, 54, 17, 32, 2.99, 95.68); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(320, 54, 14, 36, 7.79, 280.44); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(321, 54, 16, 42, 3.99, 167.58); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(322, 54, 17, 38, 2.99, 113.62); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(323, 54, 8, 15, 4.49, 67.35); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(324, 55, 9, 41, 3.59, 147.19); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(325, 55, 26, 24, 4.29, 102.96); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(326, 55, 8, 24, 4.49, 107.76); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(327, 55, 7, 1, 14.89, 14.89); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(328, 55, 21, 4, 2.19, 8.76); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(329, 55, 7, 15, 14.89, 223.35); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(330, 55, 1, 33, 29.89, 986.37); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(331, 55, 10, 48, 4.19, 201.12); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(332, 55, 28, 40, 2.99, 119.60); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(333, 56, 1, 37, 29.89, 1105.93); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(334, 56, 28, 6, 2.99, 17.94); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(335, 56, 9, 13, 3.59, 46.67); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(336, 56, 6, 49, 4.79, 234.71); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(337, 56, 7, 44, 14.89, 655.16); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(338, 56, 8, 23, 4.49, 103.27); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(339, 56, 1, 43, 29.89, 1285.27); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(340, 57, 20, 27, 19.29, 520.83); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(341, 57, 3, 3, 15.49, 46.47); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(342, 57, 6, 41, 4.79, 196.39); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(343, 57, 4, 3, 12.59, 37.77); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(344, 57, 6, 36, 4.79, 172.44); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(345, 58, 26, 3, 4.29, 12.87); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(346, 58, 16, 22, 3.99, 87.78); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(347, 58, 16, 24, 3.99, 95.76); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(348, 58, 10, 17, 4.19, 71.23); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(349, 58, 22, 10, 10.89, 108.90); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(350, 58, 28, 2, 2.99, 5.98); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(351, 58, 25, 34, 11.69, 397.46); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(352, 59, 11, 22, 34.79, 765.38); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(353, 59, 8, 26, 4.49, 116.74); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(354, 60, 9, 44, 3.59, 157.96); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(355, 60, 7, 16, 14.89, 238.24); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(356, 60, 17, 32, 2.99, 95.68); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(357, 60, 13, 34, 4.99, 169.66); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(358, 61, 17, 43, 2.99, 128.57); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(359, 61, 1, 47, 29.89, 1404.83); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(360, 61, 25, 4, 11.69, 46.76); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(361, 61, 4, 3, 12.59, 37.77); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(362, 61, 12, 5, 8.99, 44.95); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(363, 61, 21, 11, 2.19, 24.09); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(364, 61, 11, 24, 34.79, 834.96); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(365, 61, 14, 48, 7.79, 373.92); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(366, 62, 12, 32, 8.99, 287.68); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(367, 62, 28, 21, 2.99, 62.79); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(368, 62, 24, 45, 7.99, 359.55); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(369, 62, 15, 22, 6.99, 153.78); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(370, 62, 22, 21, 10.89, 228.69); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(371, 62, 6, 23, 4.79, 110.17); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(372, 62, 24, 24, 7.99, 191.76); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(373, 63, 5, 27, 3.69, 99.63); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(374, 63, 20, 46, 19.29, 887.34); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(375, 63, 28, 29, 2.99, 86.71); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(376, 63, 26, 28, 4.29, 120.12); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(377, 63, 23, 12, 25.99, 311.88); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(378, 63, 2, 13, 7.99, 103.87); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(379, 63, 4, 11, 12.59, 138.49); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(380, 63, 18, 15, 2.49, 37.35); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(381, 64, 11, 19, 34.79, 661.01); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(382, 64, 14, 12, 7.79, 93.48); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(383, 64, 27, 15, 8.69, 130.35); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(384, 64, 5, 10, 3.69, 36.90); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(385, 64, 24, 26, 7.99, 207.74); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(386, 65, 9, 14, 3.59, 50.26); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(387, 65, 27, 49, 8.69, 425.81); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(388, 65, 29, 25, 3.29, 82.25); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(389, 66, 11, 6, 34.79, 208.74); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(390, 66, 5, 18, 3.69, 66.42); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(391, 66, 17, 11, 2.99, 32.89); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(392, 66, 11, 39, 34.79, 1356.81); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(393, 67, 29, 3, 3.29, 9.87); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(394, 67, 23, 19, 25.99, 493.81); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(395, 68, 14, 8, 7.79, 62.32); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(396, 68, 14, 2, 7.79, 15.58); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(397, 68, 1, 29, 29.89, 866.81); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(398, 68, 5, 3, 3.69, 11.07); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(399, 69, 20, 41, 19.29, 790.89); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(400, 69, 26, 7, 4.29, 30.03); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(401, 69, 23, 46, 25.99, 1195.54); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(402, 69, 8, 44, 4.49, 197.56); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(403, 69, 16, 3, 3.99, 11.97); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(404, 69, 20, 9, 19.29, 173.61); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(405, 70, 27, 23, 8.69, 199.87); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(406, 70, 18, 34, 2.49, 84.66); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(407, 70, 1, 6, 29.89, 179.34); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(408, 70, 13, 32, 4.99, 159.68); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(409, 70, 24, 11, 7.99, 87.89); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(410, 71, 4, 10, 12.59, 125.90); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(411, 71, 5, 34, 3.69, 125.46); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(412, 71, 29, 40, 3.29, 131.60); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(413, 71, 15, 26, 6.99, 181.74); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(414, 71, 13, 8, 4.99, 39.92); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(415, 72, 13, 45, 4.99, 224.55); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(416, 72, 12, 13, 8.99, 116.87); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(417, 72, 21, 14, 2.19, 30.66); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(418, 72, 20, 47, 19.29, 906.63); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(419, 72, 19, 30, 3.39, 101.70); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(420, 72, 24, 34, 7.99, 271.66); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(421, 72, 5, 28, 3.69, 103.32); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(422, 72, 20, 16, 19.29, 308.64); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(423, 72, 8, 41, 4.49, 184.09); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(424, 72, 17, 19, 2.99, 56.81); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(425, 73, 23, 48, 25.99, 1247.52); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(426, 73, 4, 16, 12.59, 201.44); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(427, 73, 6, 3, 4.79, 14.37); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(428, 73, 10, 4, 4.19, 16.76); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(429, 73, 20, 25, 19.29, 482.25); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(430, 73, 19, 10, 3.39, 33.90); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(431, 73, 6, 12, 4.79, 57.48); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(432, 73, 21, 37, 2.19, 81.03); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(433, 73, 4, 40, 12.59, 503.60); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(434, 74, 18, 35, 2.49, 87.15); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(435, 74, 2, 37, 7.99, 295.63); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(436, 74, 14, 33, 7.79, 257.07); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(437, 74, 5, 16, 3.69, 59.04); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(438, 74, 12, 6, 8.99, 53.94); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(439, 74, 24, 8, 7.99, 63.92); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(440, 74, 12, 9, 8.99, 80.91); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(441, 75, 10, 6, 4.19, 25.14); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(442, 75, 10, 23, 4.19, 96.37); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(443, 75, 29, 12, 3.29, 39.48); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(444, 75, 5, 11, 3.69, 40.59); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(445, 75, 9, 26, 3.59, 93.34); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(446, 75, 12, 9, 8.99, 80.91); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(447, 75, 7, 30, 14.89, 446.70); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(448, 76, 19, 30, 3.39, 101.70); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(449, 76, 1, 18, 29.89, 538.02); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(450, 76, 17, 30, 2.99, 89.70); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(451, 76, 18, 14, 2.49, 34.86); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(452, 76, 20, 46, 19.29, 887.34); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(453, 77, 3, 2, 15.49, 30.98); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(454, 77, 25, 38, 11.69, 444.22); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(455, 77, 2, 49, 7.99, 391.51); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(456, 77, 24, 26, 7.99, 207.74); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(457, 77, 5, 5, 3.69, 18.45); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(458, 77, 5, 10, 3.69, 36.90); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(459, 77, 27, 7, 8.69, 60.83); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(460, 77, 24, 35, 7.99, 279.65); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(461, 77, 27, 22, 8.69, 191.18); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(462, 77, 3, 37, 15.49, 573.13); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(463, 78, 22, 43, 10.89, 468.27); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(464, 78, 10, 27, 4.19, 113.13); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(465, 78, 7, 5, 14.89, 74.45); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(466, 78, 23, 29, 25.99, 753.71); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(467, 79, 12, 26, 8.99, 233.74); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(468, 79, 10, 28, 4.19, 117.32); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(469, 79, 17, 5, 2.99, 14.95); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(470, 79, 8, 27, 4.49, 121.23); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(471, 79, 9, 26, 3.59, 93.34); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(472, 79, 20, 40, 19.29, 771.60); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(473, 79, 20, 46, 19.29, 887.34); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(474, 79, 25, 32, 11.69, 374.08); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(475, 80, 23, 27, 25.99, 701.73); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(476, 80, 3, 7, 15.49, 108.43); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(477, 80, 4, 18, 12.59, 226.62); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(478, 80, 3, 41, 15.49, 635.09); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(479, 80, 3, 20, 15.49, 309.80); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(480, 80, 22, 12, 10.89, 130.68); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(481, 80, 27, 26, 8.69, 225.94); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(482, 81, 13, 33, 4.99, 164.67); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(483, 81, 27, 42, 8.69, 364.98); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(484, 81, 26, 10, 4.29, 42.90); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(485, 81, 16, 2, 3.99, 7.98); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(486, 81, 24, 45, 7.99, 359.55); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(487, 81, 24, 42, 7.99, 335.58); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(488, 81, 14, 14, 7.79, 109.06); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(489, 82, 9, 18, 3.59, 64.62); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(490, 82, 17, 6, 2.99, 17.94); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(491, 82, 26, 37, 4.29, 158.73); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(492, 82, 1, 28, 29.89, 836.92); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(493, 82, 28, 35, 2.99, 104.65); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(494, 82, 13, 31, 4.99, 154.69); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(495, 82, 5, 41, 3.69, 151.29); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(496, 83, 2, 19, 7.99, 151.81); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(497, 83, 9, 32, 3.59, 114.88); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(498, 83, 10, 40, 4.19, 167.60); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(499, 83, 18, 10, 2.49, 24.90); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(500, 83, 25, 33, 11.69, 385.77); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(501, 84, 15, 12, 6.99, 83.88); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(502, 84, 22, 26, 10.89, 283.14); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(503, 84, 9, 13, 3.59, 46.67); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(504, 84, 19, 18, 3.39, 61.02); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(505, 85, 6, 44, 4.79, 210.76); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(506, 85, 5, 31, 3.69, 114.39); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(507, 85, 28, 41, 2.99, 122.59); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(508, 85, 14, 29, 7.79, 225.91); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(509, 85, 25, 16, 11.69, 187.04); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(510, 85, 5, 33, 3.69, 121.77); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(511, 85, 13, 32, 4.99, 159.68); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(512, 85, 12, 18, 8.99, 161.82); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(513, 85, 8, 7, 4.49, 31.43); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(514, 86, 4, 29, 12.59, 365.11); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(515, 86, 18, 13, 2.49, 32.37); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(516, 86, 19, 29, 3.39, 98.31); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(517, 86, 7, 28, 14.89, 416.92); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(518, 86, 15, 22, 6.99, 153.78); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(519, 87, 28, 20, 2.99, 59.80); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(520, 87, 18, 40, 2.49, 99.60); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(521, 87, 8, 30, 4.49, 134.70); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(522, 88, 25, 45, 11.69, 526.05); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(523, 88, 4, 48, 12.59, 604.32); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(524, 88, 28, 17, 2.99, 50.83); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(525, 88, 26, 24, 4.29, 102.96); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(526, 88, 5, 11, 3.69, 40.59); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(527, 88, 14, 49, 7.79, 381.71); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(528, 88, 29, 34, 3.29, 111.86); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(529, 88, 27, 25, 8.69, 217.25); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(530, 88, 8, 26, 4.49, 116.74); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(531, 88, 5, 34, 3.69, 125.46); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(532, 89, 28, 34, 2.99, 101.66); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(533, 89, 15, 38, 6.99, 265.62); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(534, 89, 12, 31, 8.99, 278.69); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(535, 90, 18, 29, 2.49, 72.21); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(536, 90, 4, 5, 12.59, 62.95); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(537, 90, 3, 3, 15.49, 46.47); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(538, 90, 28, 14, 2.99, 41.86); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(539, 90, 18, 34, 2.49, 84.66); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(540, 90, 20, 21, 19.29, 405.09); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(541, 91, 13, 24, 4.99, 119.76); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(542, 91, 29, 27, 3.29, 88.83); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(543, 91, 7, 16, 14.89, 238.24); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(544, 91, 8, 3, 4.49, 13.47); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(545, 91, 18, 18, 2.49, 44.82); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(546, 91, 9, 6, 3.59, 21.54); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(547, 92, 6, 26, 4.79, 124.54); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(548, 92, 19, 23, 3.39, 77.97); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(549, 92, 4, 32, 12.59, 402.88); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(550, 92, 16, 34, 3.99, 135.66); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(551, 92, 29, 40, 3.29, 131.60); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(552, 92, 29, 41, 3.29, 134.89); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(553, 93, 14, 31, 7.79, 241.49); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(554, 93, 4, 37, 12.59, 465.83); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(555, 93, 12, 39, 8.99, 350.61); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(556, 94, 3, 27, 15.49, 418.23); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(557, 94, 16, 42, 3.99, 167.58); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(558, 94, 19, 3, 3.39, 10.17); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(559, 94, 9, 9, 3.59, 32.31); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(560, 94, 24, 6, 7.99, 47.94); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(561, 94, 11, 29, 34.79, 1008.91); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(562, 94, 13, 43, 4.99, 214.57); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(563, 95, 5, 25, 3.69, 92.25); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(564, 95, 23, 19, 25.99, 493.81); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(565, 95, 14, 44, 7.79, 342.76); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(566, 95, 18, 45, 2.49, 112.05); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(567, 96, 15, 47, 6.99, 328.53); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(568, 96, 28, 15, 2.99, 44.85); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(569, 96, 26, 48, 4.29, 205.92); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(570, 96, 1, 41, 29.89, 1225.49); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(571, 96, 19, 30, 3.39, 101.70); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(572, 96, 24, 46, 7.99, 367.54); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(573, 97, 5, 30, 3.69, 110.70); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(574, 97, 4, 16, 12.59, 201.44); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(575, 97, 16, 12, 3.99, 47.88); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(576, 97, 7, 26, 14.89, 387.14); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(577, 97, 14, 24, 7.79, 186.96); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(578, 97, 6, 22, 4.79, 105.38); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(579, 98, 24, 47, 7.99, 375.53); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(580, 98, 15, 34, 6.99, 237.66); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(581, 98, 7, 49, 14.89, 729.61); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(582, 98, 28, 40, 2.99, 119.60); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(583, 98, 24, 48, 7.99, 383.52); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(584, 99, 16, 37, 3.99, 147.63); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(585, 99, 19, 18, 3.39, 61.02); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(586, 99, 14, 47, 7.79, 366.13); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(587, 99, 4, 6, 12.59, 75.54); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(588, 100, 24, 12, 7.99, 95.88); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(589, 100, 19, 10, 3.39, 33.90); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(590, 100, 24, 49, 7.99, 391.51); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(591, 100, 29, 33, 3.29, 108.57); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(592, 100, 17, 13, 2.99, 38.87); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(593, 100, 27, 11, 8.69, 95.59); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(594, 100, 10, 34, 4.19, 142.46); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(595, 100, 6, 34, 4.79, 162.86); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(596, 100, 15, 4, 6.99, 27.96); 
INSERT INTO public.vendaitem(idvendaitem, idvenda, idproduto, quantidade, valorunitario, valortotal)  VALUES 
(597, 100, 21, 26, 2.19, 56.94); 

(´。＿。｀)
