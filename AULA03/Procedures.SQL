Crie uma procedure chamada adicionar_cliente que insira um novo cliente na tabela clientes com os parâmetros nome, 
email, e telefone.

DELIMITER //

CREATE PROCEDURE adicionar_cliente(
    IN nome_novo VARCHAR (100),
    IN email_novo VARCHAR (100),
    IN telefone_novo VARCHAR (100)
)
BEGIN
    INSERT INTO Clientes(Nome,Email,Telefone)
    VALUES(nome_novo,email_novo,telefone_novo);
    
    END//

    DELIMITER;

-- Chamar Procedure 
CALL adicionar_cliente("tevinho","tete@gmail.com","5100000000");

Crie uma procedure chamada atualizar_preco_produto que atualize o preço de um produto na tabela produtos com os 
parâmetros id_produto e novo_preco.

DELIMITER //

CREATE PROCEDURE atualizar_preco_produto(
    IN id_produto INT,
    IN novo_preco DECIMAL(10, 2)
)
BEGIN
    UPDATE Produtos
    SET Preco = novo_preco
    WHERE Idproduto = id_produto;
END//

DELIMITER ;

-- Chamar Procedure 
CALL atualizar_preco_produto(2, 199.99);

Crie uma procedure chamada registrar_pedido que insira um novo pedido na tabela pedidos com os parâmetros id_cliente, data_pedido, e status.

DELIMITER //

CREATE PROCEDURE registrar_pedido(
    IN id_do_cliente INT,
    IN id_do_produto INT,
    IN data_do_pedido DATE,
    IN status_do_pedido VARCHAR(50)
)
BEGIN
    INSERT INTO Pedidos(IdClientes, Data_pedido, Status)
    VALUES(id_do_cliente, data_do_pedido, status_do_pedido);
END//

DELIMITER ;

-- Chamar Procedure 
CALL registrar_pedido(1, 101, '2024-08-23', 'Em Processamento');


Crie uma procedure chamada adicionar_item_pedido que adicione um item à tabela itens_pedido com os parâmetros id_pedido, id_produto, quantidade, e preco_unitario.

DELIMITER //

CREATE PROCEDURE adicionar_item_pedido(
    IN id_pedido INT,
    IN id_produto INT,
    IN quantidade INT,
    IN preco_unitario DECIMAL(10, 2)
)
BEGIN
    INSERT INTO Itens(Idpedidos, Idproduto, preco_unitario, Quantidade)
    VALUES (id_pedido, id_produto, preco_unitario, quantidade);
END//

DELIMITER ;

-- Chamar Procedure
CALL adicionar_item_pedido(1, 101, 5, 19.99);
