--Update Campo - questão 5

UPDATE CLIENTE
SET Email = 'ana@hotmail.com'
WHERE Nome_Completo = 'Ana Aguiar';

--Atualiza Produto Sem Categoria
UPDATE Produto
SET Id_Categoria = 6
WHERE Id_Produto = 8;