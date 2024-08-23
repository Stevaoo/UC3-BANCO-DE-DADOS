Selecione todos os registros da tabela clientes.
SELECT IdClientes,Nome,Email,Data_cadastro
FROM Clientes ;


Selecione todos os registros da tabela produtos.
SELECT Idproduto,Nome,Estoque,Preco,Descricao
FROM Produtos;

Selecione todos os registros da tabela pedidos e associe-os com o nome do cliente.
SELECT 
    Pedidos.Idpedidos,
    Pedidos.Data_pedido,
    Pedidos.Status,
    Clientes.Nome AS Nome_Cliente
FROM 
    Pedidos
INNER JOIN 
    Clientes ON Pedidos.IdClientes = Clientes.IdClientes;

Selecione todos os registros da tabela itens_pedido e associe-os com os detalhes do pedido e do produto.


