-- Inserindo Dados nas Tabelas - questão 4

--Endereco
INSERT INTO Endereco (Cep, Estado, Cidade, Bairro, Rua, Numero, Complemento) 
	VALUES('12345678', 'RJ', 'Petropolis',  'Botafogo', 'Alameda Fulano', 2019, null);

INSERT INTO Endereco (Cep, Estado, Cidade, Bairro, Rua, Numero, Complemento) 
	VALUES('85647239', 'SP', 'Osasco',  'Corintinhas', 'Pereira Junior', 1578, 'Apartamento 2');

INSERT INTO Endereco (Cep, Estado, Cidade, Bairro, Rua, Numero, Complemento) 
	VALUES('22222222', 'RJ', 'Rio de Janeiro',  'Vasco', 'Rua dos Rebaixados', 2015, 'kkkkkkkkkkaiu');

INSERT INTO Endereco (Cep, Estado, Cidade, Bairro, Rua, Numero, Complemento) 
	VALUES('11111111', 'RJ', 'Rio de Janeiro',  'Botafogo', 'General Severiano', 2021, 'Campeao');

INSERT INTO Endereco (Cep, Estado, Cidade, Bairro, Rua, Numero, Complemento) 
	VALUES('12345678', 'MG', 'Cruzerio',  'Serie B', 'Alameda Fulano', 1688, 'Vai voltar');
	
--Cliente	
INSERT INTO Cliente (Nome_Usuario, Nome_Completo, Data_Nascimento, Email, Cpf, Id_Endereco) 
	VALUES( 'FA', 'Fabio Aguiar', '1992/06/15', 'fabio@gmail.com', '45875874848', 1);
	
INSERT INTO Cliente (Nome_Usuario, Nome_Completo, Data_Nascimento, Email, Cpf, Id_Endereco) 
	VALUES( 'AN', 'Ana Aguiar', '1994/06/15', 'ana@gmail.com', '45875854847', 1);

INSERT INTO Cliente (Nome_Usuario, Nome_Completo, Data_Nascimento, Email, Cpf, Id_Endereco) 
	VALUES( 'RF', 'Rogeria Fonseca', '1982/09/11', 'rogeria@gmail.com', '89875854847', 2);

INSERT INTO Cliente (Nome_Usuario, Nome_Completo, Data_Nascimento, Email, Cpf, Id_Endereco) 
	VALUES( 'FF', 'Fabricio Fake', '1980/02/15', 'fabricio@gmail.com', '25875854874', 3);
	
INSERT INTO Cliente (Nome_Usuario, Nome_Completo, Data_Nascimento, Email, Cpf, Id_Endereco) 
	VALUES( 'MF', 'Michele Fernandez', '1992/06/15', 'michele@gmail.com', '77875874847', 4);
	
INSERT INTO Cliente (Nome_Usuario, Nome_Completo, Data_Nascimento, Email, Cpf, Id_Endereco) 
	VALUES( 'MB', 'Maria do Bairro', '1992/06/15', 'maria@gmail.com', '66875874857', 5);
		   	
-- Pedido	
INSERT INTO Pedido (Data_Pedido, Id_Cliente) VALUES('2020/05/05', 1);
INSERT INTO Pedido (Data_Pedido, Id_Cliente) VALUES('2020/07/22', 1);
INSERT INTO Pedido (Data_Pedido, Id_Cliente) VALUES('2020/04/10', 2);
INSERT INTO Pedido (Data_Pedido, Id_Cliente) VALUES('2020/02/20', 3);
INSERT INTO Pedido (Data_Pedido, Id_Cliente) VALUES('2020/06/21', 4);
INSERT INTO Pedido (Data_Pedido, Id_Cliente) VALUES('2020/07/23', 5);
INSERT INTO Pedido (Data_Pedido, Id_Cliente) VALUES('2020/04/10', 2);

--Funcionario
INSERT INTO Funcionario (Nome_Funcionario, Cpf) VALUES('Raul Professor', '45789548762');
INSERT INTO Funcionario (Nome_Funcionario, Cpf) VALUES('Renato Viana', '69389548762');
INSERT INTO Funcionario (Nome_Funcionario, Cpf) VALUES('Igor da Costa', '78589548762');
INSERT INTO Funcionario (Nome_Funcionario, Cpf) VALUES('Celio da Paz', '56889548762');
INSERT INTO Funcionario (Nome_Funcionario, Cpf) VALUES('Ercules Mauricio', '12389548762');
INSERT INTO Funcionario (Nome_Funcionario, Cpf) VALUES('Teste Delete', '11189548762');

--Categoria
INSERT INTO Categoria (Nome_Categoria, Descricao, Id_Funcionario) VALUES('Roupa', 'Vestuário de modo geral', 1);
INSERT INTO Categoria (Nome_Categoria, Descricao, Id_Funcionario) VALUES('Eletronicos', 'Produtos eletrônicos em geral', 2);
INSERT INTO Categoria (Nome_Categoria, Descricao, Id_Funcionario) VALUES('Moveis', 'Moveis em geral', 3);
INSERT INTO Categoria (Nome_Categoria, Descricao, Id_Funcionario) VALUES('PetShop', 'Produtos para pets', 4);
INSERT INTO Categoria (Nome_Categoria, Descricao, Id_Funcionario) VALUES('Alimento', 'Todo tipo de alimento', 5);
INSERT INTO Categoria (Nome_Categoria, Descricao, Id_Funcionario) VALUES('Limpeza', 'Todo tipo de produto de limpeza', 1);
INSERT INTO Categoria (Nome_Categoria, Descricao, Id_Funcionario) VALUES('Limpeza', 'Todo tipo de produto de limpeza', 1);

--Produto
INSERT INTO Produto (Nome_Produto, Preco, Data_Fabricacao, Estoque, Descricao, Id_Categoria) 
	VALUES('Camisa', 1500.00, '2020/07/22', 10, 'Camisa Gucci feita para Ana', 1);
	
INSERT INTO Produto (Nome_Produto, Preco, Data_Fabricacao, Estoque, Descricao, Id_Categoria) 
	VALUES('PS5', 5500.00, '2020/07/23', 10, ' PlayStation 5 (PS5) - Lançamento', 2);
	
INSERT INTO Produto (Nome_Produto, Preco, Data_Fabricacao, Estoque, Descricao, Id_Categoria) 
	VALUES('Cama', 799.00, '2020/02/01', 2, 'Cama Box Casal Colchão De Espuma D33 Orthotec 138x188x70cm Inducol Marrom', 3);
	
INSERT INTO Produto (Nome_Produto, Preco, Data_Fabricacao, Estoque, Descricao, Id_Categoria) 
	VALUES('Casinha de cachorro', 189.99, '2020/01/16', 1, 'Casinha Para Cachorro Grande Durahouse Preto', 4);
	
INSERT INTO Produto (Nome_Produto, Preco, Data_Fabricacao, Estoque, Descricao, Id_Categoria) 
	VALUES('Sorvete', 20.00, '2020/05/12', 20, 'Sorvete de Flocos Cremosíssimo Kibon 1,5 Litros', 5);

INSERT INTO Produto (Nome_Produto, Preco, Data_Fabricacao, Estoque, Descricao, Id_Categoria) 
	VALUES('Kinder Ovo', 6.00, '2020/07/24', 50, 'Ovo de chocolate ao leite com brinde', 5);
	
INSERT INTO Produto (Nome_Produto, Preco, Data_Fabricacao, Estoque, Descricao, Id_Categoria) 
	VALUES('Xbox One S', 2300.00, '2020/04/10', 15, 'Console Xbox One S 1TB', 2);
	
INSERT INTO Produto (Nome_Produto, Preco, Data_Fabricacao, Estoque, Descricao, Id_Categoria) 
	VALUES('Sabonete', 3.50, '2020/03/07', 15, 'Sabonete cheiroso de lavanda', null);

--Pedido_Produto
INSERT INTO Pedido_Produto (Quantidade, Id_Produto, Id_Pedido) VALUES(10, 1, 3);
INSERT INTO Pedido_Produto (Quantidade, Id_Produto, Id_Pedido) VALUES(1, 2, 1);
INSERT INTO Pedido_Produto (Quantidade, Id_Produto, Id_Pedido) VALUES(1, 5, 1);
INSERT INTO Pedido_Produto (Quantidade, Id_Produto, Id_Pedido) VALUES(2, 3, 2);
INSERT INTO Pedido_Produto (Quantidade, Id_Produto, Id_Pedido) VALUES(1, 4, 4);
INSERT INTO Pedido_Produto (Quantidade, Id_Produto, Id_Pedido) VALUES(3, 5, 5);
INSERT INTO Pedido_Produto (Quantidade, Id_Produto, Id_Pedido) VALUES(2, 7, 7);

--Controle - Funcionario atualiza estoque
INSERT INTO Controle (Id_Funcionario, Id_Produto) VALUES(1, 1);
INSERT INTO Controle (Id_Funcionario, Id_Produto) VALUES(2, 3);
INSERT INTO Controle (Id_Funcionario, Id_Produto) VALUES(3, 2);
INSERT INTO Controle (Id_Funcionario, Id_Produto) VALUES(4, 5);
INSERT INTO Controle (Id_Funcionario, Id_Produto) VALUES(5, 4);
