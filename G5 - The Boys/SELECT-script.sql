--SELECT - questão 7

--Parte A
SELECT * FROM Cliente c
	LEFT JOIN Endereco e ON c.Id_Endereco = e.Id_Endereco ;
	
SELECT nome_completo, rua FROM Cliente c
	INNER JOIN Endereco e ON c.Id_Endereco = e.Id_Endereco ;
	
SELECT * FROM Pedido p
	INNER JOIN Cliente c ON p.Id_Cliente = c.Id_Cliente;

-- Funcionario que cadastrou categoria 
SELECT Id_Categoria, Nome_Categoria, Nome_Funcionario FROM Categoria c
	INNER JOIN Funcionario f ON c.Id_Funcionario = f.Id_Funcionario;
	
	
SELECT * FROM Pedido_Produto p
	INNER JOIN Pedido pe ON p.Id_pedido = pe.Id_pedido
	INNER JOIN Produto pr ON p.Id_produto = pr.Id_produto
	INNER JOIN Cliente c ON pe.Id_Cliente = c.Id_Cliente;
	
SELECT p.id_pedido, nome_completo, cpf, nome_produto, preco, quantidade, data_pedido FROM Pedido_Produto p
	INNER JOIN Pedido pe ON p.Id_pedido = pe.Id_pedido
	INNER JOIN Produto pr ON p.Id_produto = pr.Id_produto
	INNER JOIN Cliente c ON pe.Id_Cliente = c.Id_Cliente;
	
--Parte B

SELECT cpf, count(cpf) as "Quantidade de Compras" FROM Pedido_Produto p
	INNER JOIN Pedido pe ON p.Id_pedido = pe.Id_pedido
	INNER JOIN Produto pr ON p.Id_produto = pr.Id_produto
	INNER JOIN Cliente c ON pe.Id_Cliente = c.Id_Cliente
	GROUP BY cpf;
	
SELECT nome_completo, count(cpf) as "Quantidade de Produtos" FROM Pedido_Produto p
	INNER JOIN Pedido pe ON p.Id_pedido = pe.Id_pedido
	INNER JOIN Produto pr ON p.Id_produto = pr.Id_produto
	INNER JOIN Cliente c ON pe.Id_Cliente = c.Id_Cliente
	GROUP BY nome_completo;

/* Quantidade de produtos por pedido */
SELECT p.id_pedido, count(p.id_pedido) as "Quantidade de Produtos" FROM Pedido_Produto p
	INNER JOIN Pedido pe ON p.Id_pedido = pe.Id_pedido
	INNER JOIN Produto pr ON p.Id_produto = pr.Id_produto
	INNER JOIN Cliente c ON pe.Id_Cliente = c.Id_Cliente
	GROUP BY p.id_pedido;
	
/* Quantidade de itens por pedido */
SELECT p.id_pedido, sum(quantidade) as "Quantidade de itens" FROM Pedido_Produto p
	INNER JOIN Pedido pe ON p.Id_pedido = pe.Id_pedido
	INNER JOIN Produto pr ON p.Id_produto = pr.Id_produto
	GROUP BY p.id_pedido;

/* Quantidade de itens por cpf */
SELECT cpf, nome_completo, sum(quantidade) as "Quantidade de itens Comprados" FROM Pedido_Produto p
	INNER JOIN Pedido pe ON p.Id_pedido = pe.Id_pedido
	INNER JOIN Produto pr ON p.Id_produto = pr.Id_produto
	INNER JOIN Cliente c ON pe.Id_Cliente = c.Id_Cliente
	GROUP BY cpf, nome_completo
	HAVING sum(quantidade)>=3;

--Parte C - Nota Fiscal
SELECT row_number() OVER (PARTITION by 0) as "Número da nota Fiscal", p.id_pedido as "Número do Pedido", nome_completo as "Nome do Cliente", cpf, now() as "Data de Emissão", sum(quantidade) as "Quantidade de itens", sum(preco * quantidade) as "Total da Nota"  FROM Pedido_Produto p
	INNER JOIN Pedido pe ON p.Id_pedido = pe.Id_pedido
	INNER JOIN Produto pr ON p.Id_produto = pr.Id_produto
	INNER JOIN Cliente c ON pe.Id_Cliente = c.Id_Cliente
	GROUP BY p.id_pedido, nome_completo, cpf
	ORDER BY "Número da nota Fiscal";
	
SELECT p.Id_pedido "Número da nota Fiscal", p.id_pedido as "Número do Pedido", nome_completo as "Nome do Cliente", cpf, nome_produto, now() as "Data de Emissão", sum(quantidade) as "Quantidade de itens", sum(preco * quantidade) as "Total da Nota"  FROM Pedido_Produto p
	INNER JOIN Pedido pe ON p.Id_pedido = pe.Id_pedido
	INNER JOIN Produto pr ON p.Id_produto = pr.Id_produto
	INNER JOIN Cliente c ON pe.Id_Cliente = c.Id_Cliente
	GROUP BY p.id_pedido, nome_completo, cpf, nome_produto
	ORDER BY "Número da nota Fiscal";




		