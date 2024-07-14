----PART 2: COMANDOS BÁSICOS SQL----
==================================TABELA COM CHAVE ESTRANGEIRA===========================================
CREATE TABLE Pedidos (
    idPedidos INT AUTO_INCREMENT PRIMARY KEY,
    idClientes INT,
    numePedido VARCHAR(50),
    valorTotal DECIMAL (10, 2),
    dataPedido DATE,
    FOREIGN KEY (idClientes) REFERENCES Clientes(idClientes)
    );

================================INSERINDO VALORES NA TABELA==============================================
INSERT IGNORE INTO Pedidos(idPedidos,numeroPedido,valorTotal,dataPedido)
VALUES(1,"PED-001",150.00,"2024-07-12"),
(2,"PED-002",250.00,"2024-07-12"),
(3,"PED-003",180.00,"2024-07-13");

================================CONSULTA COM A FUNÇÃO SUM===============================================
SELECT SUM(valorTotal) FROM PedidosFROM Pedidos; 
--OU 
SELECT SUM(valorTotal) AS valor FROM Pedidos; --AS É UM TITULO 
-- SOMA O VALOR TOTAL DE PEDIDOS

================================CONSULTA COM A FUNÇÃO AVG===============================================
SELECT AVG(valorTotal) AS valor_media_pedidos FROM Pedidos;
--AVG CALCULA A MÉDIA DOS NUMEROS

================================CONSULTA COM A FUNÇÃO MAX================================================
SELECT MAX(numeroPedido) as Pedidos_com_numero_mais_alto FROM Pedidos;
--MAX ENCONTRA O NÚMERO MAIS ALTO EM ORDEM ALFABÉTICA

================================CONSULTA COM A FUNÇÃO MIN================================================
SELECT MIN(numeroPedido) AS Pedidos_com_numero_mais_baixo FROM Pedidos;
--MIN ENCONTRA O NÚMERO MAIS BAIXO EM ORDEM ALFABÉTICA

================================CONSULTA COM A FUNÇÃO INNER JOIN=========================================
SELECT Clientes.idClientes, Clientes.nome, Clientes.emailCliente, Pedidos.numeroPedido
FROM Clientes
INNER JOIN Pedidos ON Clientes.idClientes = Pedidos.idPedidos
--CONSULTA DUAS TABELAS COM A CONDIÇÃO SENDO AMBAS TABELA TENDO (idclientes)

================================CONSULTA COM A FUNÇÃO INNER JOIN=========================================
SELECT Clientes.idClientes, Clientes.nome, Clientes.emailCliente, Pedidos.numeroPedido
FROM Clientes
LEFT JOIN Pedidos ON Clientes.idClientes = Pedidos.idPedidos
--SELECIONA TODOS OS CLIENTES MESMO OS QUE NÃO TEM NA TABELA(PEDIDOS), OS QUE NÃO TEM VALOR RETORNAM NUUL


==========================CONSULTA COM A FUNÇÃO INNER JOIN COM WHERE=====================================
SELECT Clientes.idClientes, Clientes.nome, Pedidos.numeroPedido, Pedidos.valorTotal
FROM Clientes
INNER JOIN Pedidos ON Clientes.idClientes = Pedidos.idPedidos
WHERE Pedidos.valorTotal > 200
-- SELECIONA CLIENTES E SEUS PEDIDOS APENAS SE O VALOR FOR MAIOR QUE (200) ESSA É A CONDIÇÃO

==========================CONSULTA COM A FUNÇÃO INNER JOIN COM WHERE=====================================
SELECT COUNT(*) 
FROM Pedidos;
-- CONTA O NÚMERO TOTAL DE PEDIDOS 


=======================================GROUP BY==========================================================
SELECT Clientes.nome, COUNT(Pedidos.idPedidos) AS TOTAL_PEDIDOS
FROM Clientes 
INNER JOIN Pedidos ON Clientes.idClientes = Pedidos.idClientes
GROUP BY Clientes.nome
-- SELECIONA O NOME E CONTA QUANTOS idPedidos TEM NA COLUNA Pedidos E O NOME DA BUSCA SERÁ TOTAL_PEDIDOS, E CONSULTA A TABELA Clintes E Pedidos COM A CONDIÇÃO SENDO AMBOS TEREM (idClientes), GROUP BY ELE AGRUPA POR NOME 


--- BANCO DE DADOS EM CASA DOMINGOOUUU

CREATE TABLE IF NOT EXISTS Eventos(
ID_Evento INT PRIMARY KEY,
Nome_evento VARCHAR(100),
Data_evento DATE,
Local_descricao VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Parcipantes(
ID_participante INT PRIMARY KEY,
Nome_participante VARCHAR(100),
Email VARCHAR(100),
Telefone VARCHAR(100)
);


CREATE TABLE IF NOT EXISTS Palestrantes(
ID_palestrante INT PRIMARY KEY,
Nome_palestrante VARCHAR(100),
Especialidade VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Inscricoes(
ID_inscricao INT PRIMARY KEY,
ID_participante INT,
ID_evento INT,
Data_inscricao DATE,
    
FOREIGN KEY (ID_participante) REFERENCES Participantes(ID_participante),
    
FOREIGN KEY (ID_evento) REFERENCES Eventos (ID_evento)
);
