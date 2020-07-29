

--7.a)

-- Com o banco criado e povoado,
-- digamos que a empresa de e-commerce queira lançar uma campanha de marketing que utilize o nome e o celular dos usuários.
-- O comando abaixo retorna o nome, o número e o tipo (Celular).

select uf.nome as usuario, ut.numero_tel as telefone, ut.tipo_tel as tipo
from usuario_telefone ut 
inner join usuario_pf uf on ut.id_usuario = uf.id_usuario 
where ut.tipo_tel = 'Celular'


-- O seguinte comando une as tabelas Usuario, Categoria e Produto

select u.usuario , c.nome as Categoria, p.nome as Produto

from usuario as u
inner join categoria as c       on u.id_usuario = c.id_usuario 
inner join produto as p         on c.id_categoria = p.id_categoria 

--7.b)


-- O comando abaixo conta todos os registros da tabela Produto, agrupando por nome do produto (como aparecem na tabela Categoria).

select c.nome as categoria, count(p.*) as produto 
from categoria c, produto p
where c.id_categoria = p.id_categoria 
group by c.nome

-- 


--7.c)

-- Aqui, os comandos da Nota Fiscal, gerados de 3 formas: por Comprador, por todas as vendas da empresa, e por Vendedor.

-- COMPRADOR
SELECT pf.nome AS "Comprador", pf.cpf 														AS "CPF", 
CONCAT(ue.logradouro, ', ',ue.numero, ' - ',ue.bairro, ' - ', ue.cidade, ' - ', ue.estado)  AS "Endereço",
to_char(p.data, 'DD/MM/YYYY') 																AS "Data emissão",
p.id_pedido 																				AS "Pedido", 
pi.id_produto as "Código produto", pro.nome 										AS "Descrição produto",
pi.quantidade as "Quant", CONCAT('R$ ',pro.valor_unitario) 									AS "Valor unit", 
CONCAT('R$ ',(pro.valor_unitario * pi.quantidade )) 										AS "Sub Total"

FROM usuario AS u
INNER JOIN usuario_pf AS pf ON u.id_usuario = pf.id_usuario
INNER JOIN usuario_endereco AS ue ON u.id_usuario = ue.id_usuario
INNER JOIN pedido AS p ON u.id_usuario = p.id_usuario
INNER JOIN pedidoitem AS pi ON p.id_pedido = pi.id_pedido
INNER JOIN produto AS pro ON pi.id_produto = pro.id_produto
WHERE p.id_pedido = 1


--todas as NFs
SELECT  
to_char(p.data, 'DD/MM/YYYY')  as "Data emissão", pi.id_produto as "Código produto", pro.nome as "Descrição produto",
pi.quantidade as "Quant", CONCAT('R$ ',pro.valor_unitario) as "Valor unit", 
CONCAT('R$ ',(pro.valor_unitario * pi.quantidade )) as "Valor Total"
from pedido as p
inner join pedidoitem as pi on p.id_pedido = pi.id_pedido
inner join produto as pro on pi.id_produto = pro.id_produto
inner join categoria  cat on pro.id_categoria = cat.id_categoria
inner join usuario as u on cat.id_usuario = u.id_usuario
inner join usuario_pf as pf on u.id_usuario = pf.id_usuario
INNER JOIN usuario_endereco AS ue ON u.id_usuario = ue.id_usuario
inner join usuario_pf as pf2 on u.id_usuario = pf2.id_usuario
WHERE pf.id_usuario = cat.id_usuario;


-- VENDEDOR
SELECT pro.id_produto, pf.nome AS "Vendedor", pf.cpf AS "CPF", CONCAT(ue.logradouro, ', ',ue.numero, ' - ',ue.bairro, ' - ', ue.cidade, ' - ', ue.estado) AS "Endereço"
from pedido as p
inner join pedidoitem as pi on p.id_pedido = pi.id_pedido
inner join produto as pro on pi.id_produto = pro.id_produto
inner join categoria  cat on pro.id_categoria = cat.id_categoria
inner join usuario as u on cat.id_usuario = u.id_usuario
inner join usuario_pf as pf on u.id_usuario = pf.id_usuario
INNER JOIN usuario_endereco AS ue ON u.id_usuario = ue.id_usuario
WHERE pf.id_usuario = cat.id_usuario;




