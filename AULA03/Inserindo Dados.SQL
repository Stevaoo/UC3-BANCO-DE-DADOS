Insira pelo menos 5 registros na tabela clientes.
INSERT IGNORE INTO clientes(IdClientes,Nome,Email,Data_cadastro)
VALUES(01,"Stevão","Stevaorodrigues@gmail.com","2025-07-28"),
(02,"Matheus","Mattos@gmail.com","2025-01-19"),
(03,"Lucas","Florao@gmail.com","2026-11-10"),
(04,"Leandro","Alex@gmail.com","2024-12-29"),
(05,"Pedro","Pedrinho@gmail.com","28-11-29");

Insira pelo menos 5 registros na tabela produtos.
INSERT IGNORE INTO Produtos (Idproduto, Nome, Estoque, Preco, Descricao)
VALUES
(100,'Ferrari 488 Spider', 5, 1200000.00, 'Carro esportivo de luxo com motor V8 turbo e design aerodinâmico.'),
(200,'Porsche 911 Turbo S', 7, 1100000.00, 'Desempenho extremo e tecnologia avançada.'),
(300,'Lamborghini Huracán', 4, 1400000.00, 'Potência e elegância, motor V10 e design agressivo.'),
(400,'McLaren 720S', 6, 1300000.00, 'Superesportivo com motor V8 e chassi leve de carbono.');

Insira pelo menos 4 registros na tabela pedidos com clientes diferentes.

INSERT IGNORE INTO Pedidos(IdClientes,Idpedidos,Data_pedido,Status)
VALUES(01,10,"2028-09-26","ENTREGUE"),
(02,11,"2027-11-19","REEMBOLSO"),
(03,12,"2028-10-28","EM ANALISE"),
(04,13,"28-09-13","EM ANDAMENTO"),
(05,14,"2030-01-01","EM ANALISE ");

Insira pelo menos 4 registros na tabela itens_pedido associando pedidos e produtos.
INSERT IGNORE INTO Itens(Iditens_Pedidos,Idpedidos,Idproduto,Quantidade,Preco_Unitario)
VALUES(1010,02,200,1,1100000.00),
(1020,03,300,5, 1400000.00),
(1030,06,400,2,1300000.00),
(1040,05,200,4, 1100000.00)
