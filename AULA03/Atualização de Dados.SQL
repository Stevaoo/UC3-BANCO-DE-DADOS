Atualize o preço de um produto na tabela produtos.
UPDATE Produtos
set Preco = 1.000
WHERE Idproduto = 1


Atualize o status de um pedido para "Concluído" na tabela pedidos.
UPDATE Pedidos
set Status = "CONCLUÍDO"
WHERE Idpedidos = 1

Atualize o telefone de um cliente na tabela clientes.

UPDATE Clientes
SET Telefone = '51 99000000'
WHERE idClientes = 2