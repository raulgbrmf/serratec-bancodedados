--POPULAR TABELAS:
--TABELA CLIENTE

insert into Cliente (ID_Cliente ,CPF, Nome_Usuario ,Nome_Completo ,email ,Data_Nascimento,Num_End  ) 
values(1,66666666601,'matheusPowerBI','matheus moreira','matheusmor92@gmail.com',08011992,1);
insert into Cliente (ID_Cliente ,CPF, Nome_Usuario ,Nome_Completo ,email ,Data_Nascimento,Num_End  ) 
values(2,22222222201,'nicholas_rage','nicholas silva','nicholas.vianna@hotmail.com',08091997,2);
insert into Cliente (ID_Cliente ,CPF, Nome_Usuario ,Nome_Completo ,email ,Data_Nascimento,Num_End  ) 
values(3,33333333301,'rafaelhammes','rafael hammes','rafaelhammesbc@gmail.com',03111989,3);
insert into Cliente (ID_Cliente ,CPF, Nome_Usuario ,Nome_Completo ,email ,Data_Nascimento,Num_End  ) 
values(4,44444444401,'rodrigo resende','rodrigo resende','rodrigo.sresende@gmail.com',05031991,4);
insert into Cliente (ID_Cliente ,CPF, Nome_Usuario ,Nome_Completo ,email ,Data_Nascimento,Num_End  ) 
values(5,55555555501,'batman e robin','batman & robin','batmanrobin@gmail.com',7072020,5);


--TABELA PEDIDO

insert into Pedido (ID_Pedido,Data_Pedido ,Cod_Cliente ) values(1,2000,1)
insert into Pedido (ID_Pedido,Data_Pedido ,Cod_Cliente ) values(2,2000,2)
insert into Pedido (ID_Pedido,Data_Pedido ,Cod_Cliente ) values(3,2000,3)
insert into Pedido (ID_Pedido,Data_Pedido ,Cod_Cliente ) values(4,2000,4)
insert into Pedido (ID_Pedido,Data_Pedido ,Cod_Cliente ) values(5,2000,5)


--TABELA PEDIDOITEM

insert into PedidoItem (ID_PedidoItem,Cod_Produto ,Cod_Pedido ) values(1,1,1)
insert into PedidoItem (ID_PedidoItem,Cod_Produto ,Cod_Pedido ) values(2,2,1)
insert into PedidoItem (ID_PedidoItem,Cod_Produto ,Cod_Pedido ) values(3,4,2)
insert into PedidoItem (ID_PedidoItem,Cod_Produto ,Cod_Pedido ) values(4,3,3)
insert into PedidoItem (ID_PedidoItem,Cod_Produto ,Cod_Pedido ) values(5,4,4)
insert into PedidoItem (ID_PedidoItem,Cod_Produto ,Cod_Pedido ) values(6,5,5)


--TABELA PRODUTO

Insert into produto (codigo, nome, descricao, codigo_categoria, codigo_funcionario, preco) values (1, Galaxy S10, 'celular de patrao', 1, 1, 1.99)
Insert into produto (codigo, nome, descricao, codigo_categoria, codigo_funcionario, preco) values (2, Cesta de Basquete, 'Para jogadores de Basquete', 2, 4, 99.99)
Insert into produto (codigo, nome, descricao, codigo_categoria, codigo_funcionario, preco) values (3, Travesseiro anti-insônia,'Para voce que tem insônia', 2, 5, 51)
Insert into produto (codigo, nome, descricao, codigo_categoria, codigo_funcionario, preco) values (4, GRTX 20-80Ti, 'Para jogar DOOM sem dropar frame', 4, 5, 9899.99)
Insert into produto (codigo, nome, descricao, codigo_categoria, codigo_funcionario, preco) values (5, As Crônicas de Nárnia, 'Há cerca de 60 anos, C.S. Lewis criou uma terra fantástica de magia e encantamento chamada Nárnia e, desde então, mais de 60 milhões de leitores descobriram o mundo surpreendentemente admirável e maravilhoso que existe além dos fundos de um guarda-roupa.', 5, 1, 70)


--TABELA FUNCIONARIO

Insert into funcionario (codigo, nome, cpf) values (1, 'Ze Matheus' , 12345678909)
Insert into funcionario (codigo, nome, cpf) values (2, 'Ze Fulano' , 98765432102)
Insert into funcionario (codigo, nome, cpf) values (3, 'Ze Siclano' , 14725836903)
Insert into funcionario (codigo, nome, cpf) values (4, 'Ze Beltrano' , 74185296304)
Insert into funcionario (codigo, nome, cpf) values (5, 'Ze Ramalho' , 98754613205)


--TABELA ESTOQUEPRODUTO

Insert into estoqueproduto (numero, numero_estoque, codigo_produto) values (1,1,1)
Insert into estoqueproduto (numero, numero_estoque, codigo_produto) values (2,2,2)
Insert into estoqueproduto (numero, numero_estoque, codigo_produto) values (3,3,3)
Insert into estoqueproduto (numero, numero_estoque, codigo_produto) values (4,4,4)
Insert into estoqueproduto (numero, numero_estoque, codigo_produto) values (5,5,5)


--TABELA ESTOQUE

Insert into estoque (numero, quantidade, codigo_funcionario) values (1,350,3)
Insert into estoque (numero, numero_estoque, codigo_produto) values (2,25,4)
Insert into estoque (numero, numero_estoque, codigo_produto) values (3,45,3)
Insert into estoque (numero, numero_estoque, codigo_produto) values (4,80,2)
Insert into estoque (numero, numero_estoque, codigo_produto) values (5,100,1)



--TABELA CATEGORIA

Insert into categoria (codigo, nome) values (1, 'eletronicos')
Insert into categoria (codigo, nome) values (2, 'Cama, Mesa e Banho')
Insert into categoria (codigo, nome) values (3, 'Esporte e Lazer')
Insert into categoria (codigo, nome) values (4, 'Informatica')
Insert into categoria (codigo, nome) values (5, 'Livros')



--TABELA ENDERECO

Insert into endereco (numero, cep, logradouro) values (1, 66666666666, 'rua do matheus')
Insert into endereco (numero, cep, logradouro) values (2, 22222222222, 'rua do nicholas')
Insert into endereco (numero, cep, logradouro) values (3, 33333333333, 'rua do rafael')
Insert into endereco (numero, cep, logradouro) values (4, 44444444444, 'rua do rodrigo')
Insert into endereco (numero, cep, logradouro) values (5, 55555555555, 'rua do batman e robin')
