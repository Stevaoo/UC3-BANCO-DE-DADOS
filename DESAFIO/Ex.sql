// 
1. **Crie uma base de dados com nome `Desafio + nome do aluno`.**
2. **Crie uma tabela para armazenar as características dos produtos, como nome, categoria, preço, etc.**
3. **A tabela deve conter uma coluna `ID` sequencial e única.**
4. **O produto deve possuir no mínimo 7 características armazenadas.**
CREATE TABLE IF NOT EXISTS Produtos (
    -- coluna / tipos de dado / restrição
    Idprotudo INT PRIMARY KEY,
    Nome varchar(100),
    Categoria varchar(100),
    Preço REAL,
    Descrição text,
    Fornecedor varchar (100),
    Data_de_Validade date,
    Cor varchar(100)
    );         

5. **Crie 10 registros para a tabela criada (ID 1 a 10).**
INSERT IGNORE INTO Produtos(ID_produto,Categoria,Nome,Descrição,Cor,Fornecedor,Preço,Data_de_Validade)
VALUES(001,"Smartphone","Iphone 5","Tela Retina Widescreen Multi-Touch de 4 polegadas, câmera de 8 megapíxels com flash LED, e internet 3G de altíssima velocidade","Branco","APPLE",600,2012-09-21),

(002,"Smartphone","Iphone 6","Tem uma ampla tela Touchscreen de 4.7 polegadas com uma boa resolução de 1334x750 pixels.","BRANCO","APPLE",550,2012-09-21),

(003,"Smartphone","Iphone 7","A tela do celular é Retina HD com 4.7, e resolução HD","ROSA","APPLE",800,2012-09-21),

(004,"Smartphone","Iphone 8","tela Touchscreen de 4.7 polegadas e resolução de 1334×750 pixels.","PRETO","APPLE",1000,2012-09-21),

(005,"Smartphone","Iphone XR","Aqui temos o chipset A11 Bionic com processador hexa-core (2x 2,74 GHz + 4x 2,39 GHz) e GPU A11 desenvolvida pela própria Apple.","AZAUL BEBÊ","APPLE",2000,2012-09-21),

(006,"Smartphone","Iphone 11","em uma enorme tela Touchscreen de 6.1 polegadas com uma resolução de 1792x828 pixel que não é das mais elevadas","VERMELHO","APPLE",3600,2012-09-21),

(007,"Smartphone","Iphone 12"," Tem um grande display de 6.1 polegadas com uma resolução de 2532x1170 pixel.","BRANCO","APPLE",4500,2012-09-21),

(008,"Smartphone","Iphone 13","Tem um grande display de 6.1 polegadas com uma resolução de 2532x1170 pixel.","PRETO","APPLE",5600,2012-09-21),

(009,"Smartphone","Iphone 14","A tela de 6.1 polegadas coloca esse Apple no topo de sua categoria. A resolução também é alta: 2532x1170 pixel","VERDE","APPLE",7500,2012-09-21),

(010,"Smartphone","Iphone 15"," A tela de 6.1 polegadas coloca esse Apple no topo de sua categoria. A resolução também é alta: 2556x1179 pixel. ","TITANIO","APPLE",8600,2012-09-21);


6. **Exclua o 4º registro e o 7º registro da tabela.**
DELETE FROM Produtos
WHERE ID_produto = 4;

DELETE FROM Produtos
WHERE ID_produto = 7;


7. **Adicione uma coluna na tabela chamada `Sem estoque` para armazenar se há o produto em estoque ou não (sugestão que seja um flag – verdadeiro ou falso).**

ALTER TABLE Produtos
ADD SemEstoque BOOLEAN;

8. **Altere todos os registros, com exceção do ID 2, para identificar que está sem estoque.**
UPDATE Produtos 
SET SemEstoque = TRUE 
WHERE ID_produto  <> 2;
-- Isso garante que todos os registros, exceto o registro com ID 2, serão atualizados para indicar que estão sem estoque.


9. **Monte um relatório (um `SELECT`) dos 5 primeiros registros de acordo com a ordem de inserção (do menor ID para o maior ID) e de acordo com o status da coluna `Desativado`.**

SELECT *
FROM Produtos
ORDER BY ID_produto ASC
LIMIT 5;
