1. Criação da Tabela de Livros

Você precisa organizar de maneira eficiente os dados dos livros disponíveis na biblioteca.

- Implemente uma tabela chamada `livros` para armazenar essas informações.
- Cada livro deve ser composto por pelo menos 6 características. Uma das características deve ser o valor unitário (preço). 

CREATE TABLE  IF NOT EXISTS LIVROS(
IDLivro INT PRIMARY KEY,
Titulo Varchar(100) NOT NULL,
Autor Varchar(100) NOT NULL,
Genero varchar(50),
Editora varchar(100),
Ano_Publicado int,
Preço REAL NOT NULL
);

2. Criação de Registros de Livros

- Crie pelo menos 10 registros na tabela `livros` com todas as características definidas na etapa anterior.
**Dica: eu sei como o chatgpt retorna essa parte, ele segue o mesmo padrão. Use a criatividade!**

INSERT IGNORE into LIVROS(IDLivro,Titulo,Autor,Genero,Editora,Ano_Publicado,Preço)
VALUES(1,"Pai rico, pai pobre","Robert T. Kiyosaki","Finanças","ALTA BOOKS",2016,40),

(2,"O poder da educação financeira","Robert T. Kiyosaki","Finanças","ALTA BOOKS",2014,40),

(3,"Os segredos da mente milionária","T. Harv Eker","Finanças","SEXTANTE",2017,30),

(4,"Mulheres que correm com os lobos","Clarissa Pinkola Estés","Autoconhecimneto","ROONA",1989,50),

(5,"A sabedoria da transformação","Monja Coen","Autoconhecimneto","ACADEMIA",2019,70),

(6,"Código Limpo: Habilidades Práticas do Agile Software"," Robert C. Martin","programação","ALTA BOOKS",2008,100),

(7,"Refatoração: Aperfeiçoando o Design de Códigos Existentes"," Kent Beck","programação","NOVATEC",2000,89),

(8,"Café com Deus Pai","Junior Rostirola","Religão","VIVA",2024,150),

(9,"Até que nada mais importe"," Luciano Subirá","Religão","ORVALHO",2023,160),

(10,"O Menino Pobre que Se Tornou Neurocirurgião de Fama Mundial","Ben Carson","Histórias Reais","CPB",2013,148);

3. Criação da Tabela de Autores

Você possui uma lista grande de autores cujos livros estão na biblioteca.

- Implemente uma tabela chamada `autores` para armazenar os principais dados dos autores.
- É necessário armazenar pelo menos 5 informações relevantes de cada autor.

CREATE TABLE IF NOT EXISTS AUTORES (
IDAutor int PRIMARY KEY,
Nome Varchar(100),
Nacionalidade varchar(100),
Data_Nascimento int,
Genero varchar(50),
Biografia TEXT
);

4. Criação de Registros de Autores

- Crie pelo menos 5 registros na tabela `autores` com todas as características definidas na etapa anterior.

INSERT IGNORE INTO AUTORES (IDAutor, Nome, Nacionalidade, Data_Nascimento, Genero, Biografia)
VALUES
(100, 'Robert T. Kiyosaki', 'EUA', '1947-04-08', 'Masculino', 'Robert T. Kiyosaki é um investidor, empreendedor e autor conhecido pelo livro "Pai Rico, Pai Pobre".'),
(120, 'T. Harv Eker', 'EUA', '1954-06-10', 'Masculino', 'T. Harv Eker é um autor e palestrante motivacional conhecido pelo livro "Os Segredos da Mente Milionária".'),
(130, 'Clarissa Pinkola Estés', 'EUA', '1945-01-27', 'Feminino', 'Clarissa Pinkola Estés é uma psicanalista e escritora, autora do livro "Mulheres que Correm com os Lobos".'),
(140, 'Monja Coen', 'BR', '1947-06-02', 'Feminino', 'Monja Coen é uma monja zen budista brasileira, conhecida por suas palestras e livros sobre espiritualidade.'),
(150, 'Robert C. Martin', 'EUA', '1952-10-15', 'Masculino', 'Robert C. Martin, também conhecido como Uncle Bob, é um autor e consultor de software conhecido pelo desenvolvimento de princípios de design de software.'),
(160, 'Kent Beck', 'EUA', '1961-03-31', 'Masculino', 'Kent Beck é um programador e autor conhecido por desenvolver o Extreme Programming (XP) e por ser um dos criadores do Test-Driven Development (TDD).'),
(170, 'Junior Rostirola', 'BR', '1978-07-28', 'Masculino', 'Junior Rostirola é um autor brasileiro e empreendedor social, conhecido por seu trabalho em prol das comunidades carentes.'),
(180, 'Luciano Subirá', 'BR', '1971-03-10', 'Masculino', 'Luciano Subirá é um pastor evangélico brasileiro, autor de livros cristãos e conferencista.'),
(190, 'Ben Carson', 'EUA', '1951-09-18', 'Masculino', 'Ben Carson é um neurocirurgião e autor americano, conhecido por ser o primeiro a separar com sucesso gêmeos siameses unidos pela cabeça.'),
(200, 'Luis Paulo', 'BR', '1974-12-12', 'Masculino', 'Luis Paulo é um empreendedor brasileiro, conhecido por seu trabalho no setor de tecnologia e por sua atuação social.');

5. Criação da Tabela de Empréstimos

Agora, você precisa controlar os empréstimos dos livros.

- Implemente uma tabela chamada `emprestimos` que indique qual livro está sendo emprestado a qual cliente, além da quantidade de itens, data de empréstimo e o tipo de empréstimo (curto prazo ou longo prazo).
- A tabela deve garantir a integridade dos dados e evitar duplicação entre as tabelas anteriores.

CREATE TABLE IF NOT EXISTS EMPRESTIMOS(
IDEmprestimo INT PRIMARY KEY,
IDCliente INT,
IDLivro INT,
Quantidade_Itens int,
Data_Emprestimo date,
Tipo_Emprestimo varchar(100),
FOREIGN KEY (IDLivro) REFERENCES LIVROS(IDLivro)
);


6. Criação de Registros de Empréstimos

- Crie 30 registros na tabela `emprestimos` que atendam às seguintes regras:
- Pelo menos 2 clientes devem ter realizado 6 empréstimos cada.
- Pelo menos 3 clientes devem ter realizado 4 empréstimos cada.

-- Tenho 10 livros no meu banco de dados então meu banco de dados tem até o ID 10, e tenho 5 clientes para usar e fazer diversos emprestimos.  

-- 2 Clientes com 6 empréstimos cada
INSERT IGNORE INTO EMPRESTIMOS(IDLivro, IDCliente, Quantidade_Itens, Data_Emprestimo, Tipo_Emprestimo)
VALUES
(1, 1, 1, '2021-07-11', 'curto prazo'),
(2, 1, 1, '2058-01-22', 'longo prazo'),
(3, 1, 3, '2022-12-21', 'curto prazo'),
(4, 1, 1, '2024-06-31', 'curto prazo'),
(5, 1, 2, '2029-04-05', 'longo prazo'),
(6, 1, 1, '2032-01-10', 'longo prazo');

(7, 2, 3, '2014-02-17', 'curto prazo'),
(8, 2, 1, '2054-01-18', 'longo prazo'),
(9, 2, 1, '2011-01-29', 'curto prazo'),
(10,2,1, '1994-03-14', 'curto prazo'),
(1, 2, 2, '2022-09-31', 'longo prazo'),
(3, 2, 8, '2021-01-01', 'longo prazo');

-- 3 Clientes com 4 empréstimos cada
INSERT IGNORE INTO EMPRESTIMOS(IDLivro, IDCliente, Quantidade_Itens, Data_Emprestimo, Tipo_Emprestimo)
VALUES
(7, 3, 3, '2054-02-17', 'curto prazo'),
(8, 3, 2, '2024-14-18', 'longo prazo'),
(9, 3, 1, '2031-11-29', 'longo prazo'),
(10, 3,5, '1994-03-24', 'curto prazo'),

(7, 4, 3, '2014-02-17', 'longo prazo'),
(8, 4, 1, '2014-04-18', 'longo prazo'),
(9 ,4, 1, '2010-19-18',"longo prazo"),
(2 ,4 ,2 ,'2006-14-02', 'curto prazo'),

(5, 5,3, '2028-02-17', 'curto prazo'),
(4, 5,1, '2004-07-08', 'longo prazo'),
(1, 5,5, '2019-11-19', 'curto prazo'),
(3, 5,8 ,'2029-09-09', 'longo prazo');

7. Relatório de Gastos por Cliente

- Apresente uma lista de todos os clientes e o valor total gasto com base no valor unitário (preço) de cada livro e na quantidade de empréstimos.

-- Criar uma tabela clinte com nome e idade 

SELECT SUM(IDCliente) AS LIVROS.Preço FROM ValorTotal; -- AS É UM TITULO 
-- SOMA O VALOR TOTAL DE PEDIDOS