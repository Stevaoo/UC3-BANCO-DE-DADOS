Crie uma tabela chamada clientes com as colunas: id (inteiro, chave primária, auto-incremento), nome (texto), email (texto), telefone (texto), data_cadastro (data).

CREATE TABLE IF NOT EXISTS Clientes (
    -- coluna / tipos de dado / restrição
    IdClientes INT PRIMARY KEY,
    Email varchar (100),
    Nome varchar(100),
    Telefone varchar(100),
    Data_cadastro date
    );

Crie uma tabela chamada produtos com as colunas: id (inteiro, chave primária, auto-incremento), nome (texto), descricao (texto), preco (decimal), estoque (inteiro).
Crie uma tabela chamada pedidos com as colunas: id (inteiro, chave primária, auto-incremento), id_cliente (inteiro, chave estrangeira), data_pedido (data), status (texto).

CREATE TABLE IF NOT EXISTS Produtos(
    Idproduto int,
    Nome varchar (100),
    Descricao varchar (100),
    Preco decimal(10,2),
    Estoque varchar (100)
    );

Crie uma tabela chamada itens_pedido com as colunas: id (inteiro, chave primária, auto-incremento), id_pedido (inteiro, chave estrangeira), id_produto (inteiro, chave estrangeira), quantidade (inteiro), preco_unitario (decimal).

CREATE TABLE IF NOT EXISTS Pedidos (
    Idpedidos int,
    Data_pedido date,
    Status varchar (100),
    IdClientes int,
    FOREIGN KEY(IdClientes) REFERENCES clientes (IdClientes)
    );
Crie uma tabela chamada itens_pedido com as colunas: id (inteiro, chave primária, auto-incremento), id_pedido (inteiro, chave estrangeira), id_produto (inteiro, chave estrangeira), quantidade (inteiro), preco_unitario (decimal).

CREATE TABLE IF NOT EXISTS Itens (
Iditens_Pedidos INT AUTO_INCREMENT PRIMARY KEY,
Idpedidos INT,
FOREIGN KEY (Idpedidos) REFERENCES Pedidos(Idpedidos),
Idproduto INT,
FOREIGN KEY (Idproduto) REFERENCES Produtos(Idproduto),
Quantidade INT,
Preco_Unitario DECIMAL(10, 2)
);
