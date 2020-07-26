select cliente.nome_completo, cliente.cpf_cliente, 
endereco.cep, endereco.cidade, endereco.bairro, endereco.rua, endereco.numero_residencia, endereco.complemento,
pedido.data_pedido, pedido.cod_pedido,
produto.nome_produto, produto.descricao_produto,
pedido_item.quantidade_item, pedido_item.valor_item, (pedido_item.quantidade_item * pedido_item.valor_item) as valor_total
from pedido 
inner join cliente on cliente.cod_cliente = pedido.cod_cliente 
inner join endereco on endereco.cod_cliente = cliente.cod_cliente 
inner join pedido_item on pedido_item.cod_pedido = pedido.cod_pedido 
inner join produto on produto.cod_produto = pedido_item.cod_produto 
where cliente.cod_cliente = '1'