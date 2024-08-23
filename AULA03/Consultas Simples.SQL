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

SELECT 
    Itens.Iditens_Pedidos,
    Itens.Idpedidos,
    Itens.Idproduto,
    Itens.Preco_Unitario,
    Itens.Quantidade,
    Pedidos.Data_pedido AS Data_Pedido, 
    Produtos.Nome AS Nome_Produto,
    Produtos.Descricao AS Descricao_Produto
FROM 
    Itens
INNER JOIN 
    Pedidos ON Itens.Idpedidos = Pedidos.Idpedidos
INNER JOIN
    Produtos ON Itens.Idproduto = Produtos.Idproduto;

