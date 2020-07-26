select pedido_item.cod_pedidoitem, pedido_item.cod_pedido, produto.nome_produto 
from pedido_item 
inner join produto on pedido_item.cod_produto = produto.cod_produto 