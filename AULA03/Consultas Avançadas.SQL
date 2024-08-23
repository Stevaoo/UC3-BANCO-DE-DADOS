Encontre todos os pedidos feitos por um cliente específico.

SELECT Idpedidos, Status, Data_pedido
FROM  Pedidos WHERE IdClientes = 1;  

Calcule o total de vendas de cada produto (soma dos 
preços multiplicados pela quantidade em itens_pedido).

SELECT 
    Produtos.Idproduto, Produtos.Nome AS Nome_Produto,
    SUM(Itens.Preco_Unitario * Itens.Quantidade) AS Total_Vendas
FROM Itens
INNER JOIN 
    Produtos ON Produtos.Idproduto = Produtos.Idproduto
GROUP BY 
    Produtos.Idproduto, Produtos.Nome;


Liste os produtos com estoque abaixo de um valor específico.

SELECT Idproduto, Nome, Preco, Descricao, Estoque
FROM  Produtos WHERE Produtos.Preco > 1200000.00;  

Encontre os clientes que realizaram pedidos no último mês.

SELECT IdClientes,Idpedidos,Status,Data_pedido
FROM  Pedidos WHERE Pedidos.Data_pedido = 2030-01-01;

Liste o número total de pedidos realizados por cada cliente.

SELECT COUNT(Idpedidos) AS TOTAL_DE_PEDIDOS
FROM Pedidos WHERE IdClientes = 1;
