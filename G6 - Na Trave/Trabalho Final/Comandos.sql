select nome, codigo, descricao, codigo_categoria, codigo_funcionario, preco from produto

delete from funcionario where numero = 1

update produto set preco = 2754.05 where codigo = 1

insert into funcionario (codigo, nome, cpf) values (1, 'Ze Nicholas' , 78541236909)


INNER JOIN

select nome, estoque.quantidade as quant from produto 
inner join estoqueproduto on codigo = estoqueproduto.codigo_produto 
inner join estoque on estoqueproduto.numero_estoque = estoque.numero

select cliente.nome_completo, pedido.numero from pedido inner join cliente on codigo = pedido.codigo_cliente


GROUP BY

SELECT codigo_cliente, 
COUNT (*)
FROM pedido
GROUP BY codigo_cliente
;


SELECT codigo_cliente,
nome_usuario,
COUNT (codigo_cliente )
FROM pedido
inner join cliente on cliente.codigo =pedido.codigo_cliente
GROUP BY codigo_cliente
;


--NOTA FISCAL

select cliente.codigo, cliente.nome_completo, cliente.cpf, pedido.numero, produto.codigo, produto.preco, produto.nome, produto.descricao from cliente 
inner join pedido on cliente.codigo = pedido.codigo_cliente 
inner join pedidoitem on pedidoitem.numero_pedido = pedido.numero
inner join produto on produto.codigo = pedidoitem.codigo_produto
where cliente.codigo = 1



