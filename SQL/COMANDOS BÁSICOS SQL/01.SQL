----COMANDOS BÁSICOS SQL----
==================================CRIANDO A TABELA=======================================================
CREATE TABLE IF NOT EXISTS clientes (
    -- coluna / tipos de dado / restrição
    idClientes INT PRIMARY KEY,
    nome varchar(100),
    telefone varchar(100)
    );
=======================================ALTERANDO TABELA==================================================
ALTER TABLE clientes

===========================ALTERANDO A TABELA E ADICIONANDO UMA NOVA COLUNA============================
ALTER TABLE clientes 
ADD email VARCHAR(100); 

========================ALTERANDO A TABELA E MODIFICANDO O TIPO DE UMA COLUNA==========================
ALTER TABLE clientes 
MODIFY email TEXT; 

========================ALTERANDO A TABELA E RENOMEANDO A COLUNA=======================================
ALTER TABLE clientes
CHANGE COMUMN email emailCliente VARCHAR(255);

===================================APAGANDO A COLUNA====================================================
ALTER TABLE clientes
DROP COLUMN telefone;

============================RENOMEANDO A TABELA==========================================================
ALTER TABLE clientes RENAME TO Clientes

==============================APAGANDO A TABELA==========================================================
DROP TABLE Clientes;

===========================INSERIR DADOS A UMA TABELA====================================================
INSERT IGNORE INTO Clientes(idClientes,nome,emailCliente )
VALUES (1,'Stevão Rodrigues', 'Stevão.rodrigues@gmail.com');

===========================ATUALIZANDO DADOS EM UMA TABELA===============================================
UPDATE Clientes
set emaillCliente = 'novo.email@email.com'
WHERE idClientes = 1; -- Condição

===========================DELETANDO DADOS EM UMA TABELA=================================================
DELETE FROM Clientes
WHERE idClientes = 1;


---CONSULTAS---
===========================CONSULTA SIMPLES: RETORNA TODOS OS DADOS DA TABELA============================
SELECT idClientes, nome, emaillCliente
FROM Clientes;

===========================CONSULTA SIMPLES: PEGANDO DADOS DE DOIS ID====================================
SELECT emailCliente FROM Clientes WHERE idClientes IN (3, 4, 5);

====================================CONSULTA COM ORDENAÇÃO===============================================
SELECT idClientes, nome, emailCliente -- OU (*) ACIONA TODA A COLUNA
FROM Clientes
ORDER BY nome ASC; -- OU DESC

================CONSULTA COM FILTRO E RETORNA DADOS ORDENADOS COM BASE NA CONDICÃO=======================
SELECT nome
FROM clientes
WHERE idClientes = "severo.rodrigues@gmail.com"
ORDER BY nome DESC;


==================================CONSULTA COM LIMTE DE RESULTADOS=======================================
SELECT idClientes, nome, emailCliente
FROM Clientes
LIMIT 3;


==================================CONSULTA DE VALORES ÚNICOS=============================================
SELECT DISTINCT emailCliente
FROM Clientes;

==================================TABELA COM CHAVE ESTRANGEIRA===========================================
CREATE TABLE Pedidos (
    idPedidos INT AUTO_INCREMENT PRIMARY KEY,
    idClientes INT,
    numePedido VARCHAR(50),
    valorTotal DECIMAL (10, 2),
    dataPedido DATE,
    FOREIGN KEY (idClientes) REFERENCES Clientes(idClientes)
    );

