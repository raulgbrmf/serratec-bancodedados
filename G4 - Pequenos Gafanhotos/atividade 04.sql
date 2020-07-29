--inserção de dados em uma tabela

INSERT INTO categoria (id_usuario ,nome, descricao)
values
(3,'Automóveis','Veículos para Deslocamento'),
(3,'Utilitarios','Objetos domésticos'),
(3,'Tapetes','Tapetes para Casas'),
(3,'Armas','Armas de AirSoft'),
(3,'Lâmpadas','Lâmpadas Internas e Externas');

INSERT INTO produto(id_categoria, nome, valor_unitario, data_fabricacao, quant_estoque, descricao)
values
(10,'BMW X6','567000','21/12/2019','100','BMW X6 6CC 340 HP');
(11,'Conjunto Talheres','95.99','2019-04-03','730','Talheres Inox');
(12,'Tapete Indiano','1000000','2020-07-10','10','Tapete Indiano do Aladim que Voa');
(13,'AR-15','4000.00','2020-03-21','200','AR-15 30 Bolinhas Semi-Auto');
(14,'Lâmpada Led','7.99','17/08/2019','10000','Lâmpada Led 12w');
