-- CREATE DATABASE locadora;

-- CREATE TABLE "generos" (
--   "id" serial PRIMARY KEY,
--   "genero" varchar(50) NOT NULL
-- );

-- CREATE TABLE "filmes" (
--   "id" serial PRIMARY KEY,
--   "titulo" varchar(100) NOT NULL,
--   "id_genero" int NOT NULL,
--   "valor" decimal(8,2) NOT NULL
-- );

-- CREATE TABLE "dvds" (
--   "id" serial PRIMARY KEY,
--   "id_filme" int NOT NULL,
--   "quantidade" int NOT NULL
-- );

-- CREATE TABLE "atores" (
--   "id" serial PRIMARY KEY,
--   "nome" varchar(100) NOT NULL
-- );

-- CREATE TABLE "atores_filme" (
--   "id" serial PRIMARY KEY,
--   "id_filme" int NOT NULL,
--   "id_ator" int NOT NULL,
--   "personagem" varchar(100) NOT NULL
-- );

-- CREATE TABLE "clientes" (
--   "id" serial PRIMARY KEY,
--   "nome" varchar(50) NOT NULL,
--   "sobrenome" varchar(50) NOT NULL,
--   "telefone" varchar(20) NOT NULL,
--   "endereco" varchar(100) NOT NULL
-- );

-- CREATE TABLE "emprestimos" (
--   "id" serial PRIMARY KEY,
--   "data" date NOT NULL,
--   "id_cliente" int NOT NULL
-- );

-- CREATE TABLE "filmes_emprestimo" (
--   "id" serial PRIMARY KEY,
--   "id_emprestimo" int NOT NULL,
--  "id_dvd" int NOT NULL
-- );

-- CREATE TABLE "devolucoes" (
--  "id" serial PRIMARY KEY,
--   "id_emprestimo" int NOT NULL,
--   "data" date NOT NULL
-- );

-- CREATE TABLE "filmes_devolucao" (
--   "id" serial PRIMARY KEY,
--   "id_devolucao" int NOT NULL,
--   "id_filme_imprestimo" int NOT NULL
-- );

-- ALTER TABLE "filmes" ADD FOREIGN KEY ("id_genero") REFERENCES "generos" ("id");

-- ALTER TABLE "dvds" ADD FOREIGN KEY ("id_filme") REFERENCES "filmes" ("id");

-- ALTER TABLE "atores_filme" ADD FOREIGN KEY ("id_filme") REFERENCES "filmes" ("id");

-- ALTER TABLE "atores_filme" ADD FOREIGN KEY ("id_ator") REFERENCES "atores" ("id");

-- ALTER TABLE "emprestimos" ADD FOREIGN KEY ("id_cliente") REFERENCES "clientes" ("id");

-- ALTER TABLE "filmes_emprestimo" ADD FOREIGN KEY ("id_emprestimo") REFERENCES "emprestimos" ("id");

-- ALTER TABLE "filmes_emprestimo" ADD FOREIGN KEY ("id_dvd") REFERENCES "dvds" ("id");

-- ALTER TABLE "devolucoes" ADD FOREIGN KEY ("id_emprestimo") REFERENCES "emprestimos" ("id");

-- ALTER TABLE "filmes_devolucao" ADD FOREIGN KEY ("id_devolucao") REFERENCES "devolucoes" ("id");

-- ALTER TABLE "filmes_devolucao" ADD FOREIGN KEY ("id_filme_imprestimo") REFERENCES "filmes_emprestimo" ("id");


---- Inserindo dados

-- Atores
-- INSERT INTO atores (nome) VALUES ('Bred Pitt');
-- INSERT INTO atores (nome) VALUES ('Angelina Jolie');
-- INSERT INTO atores (nome) VALUES ('Felicity Jones');

-- Generos
-- INSERT INTO generos (genero) VALUES ('Comedia');
-- INSERT INTO generos (genero) VALUES ('Terror');
-- INSERT INTO generos (genero) VALUES ('Suspense');

-- Filmes
-- INSERT INTO filmes (titulo, id_genero, valor) VALUES ('Tomb Raider', 3, 8.99);
-- INSERT INTO filmes (titulo, id_genero, valor) VALUES ('Star Wars', 2, 12.99);
-- INSERT INTO filmes (titulo, id_genero, valor) VALUES ('Loucademia de Policia', 1, 5.99);

-- Clientes
-- INSERT INTO clientes (nome, sobrenome, telefone, endereco) VALUES ('Pedro', 'Silva', '2344-3344', 'Rua 1, 34');
-- INSERT INTO clientes (nome, sobrenome, telefone, endereco) VALUES ('Paula', 'Diniz', '4544-3345', 'Rua 2, 35');
-- INSERT INTO clientes (nome, sobrenome, telefone, endereco) VALUES ('Silvana', 'Souza', '6744-3346', 'Rua 3, 36');

-- Atores Filme
-- INSERT INTO atores_filme (id_filme, id_ator, personagem) VALUES (1, 2, 'Lara Croft');
-- INSERT INTO atores_filme (id_filme, id_ator, personagem) VALUES (2, 3, 'Rebelde');
-- INSERT INTO atores_filme (id_filme, id_ator, personagem) VALUES (3, 1, 'Detetive Ruy');

-- Dvds
-- INSERT INTO dvds (id_filme, quantidade) VALUES (1, 1);
-- INSERT INTO dvds (id_filme, quantidade) VALUES (2, 1);
-- INSERT INTO dvds (id_filme, quantidade) VALUES (3, 1);

-- Emprestimos
-- INSERT INTO emprestimos (data, id_cliente) VALUES ('2019-03-01', 1);
-- INSERT INTO emprestimos (data, id_cliente) VALUES ('2019-03-15', 2);
-- INSERT INTO emprestimos (data, id_cliente) VALUES ('2019-06-05', 1);

-- Filmes Emprestimo
-- INSERT INTO filmes_emprestimo (id_emprestimo, id_dvd) VALUES (1, 1);
-- INSERT INTO filmes_emprestimo (id_emprestimo, id_dvd) VALUES (1, 2);
-- INSERT INTO filmes_emprestimo (id_emprestimo, id_dvd) VALUES (2, 3);

-- Devolucoes
-- INSERT INTO devolucoes (id_emprestimo, data) VALUES (1, '2019-03-08');
-- INSERT INTO devolucoes (id_emprestimo, data) VALUES (1, '2019-06-08');
-- INSERT INTO devolucoes (id_emprestimo, data) VALUES (2, '2019-03-08');

-- Filmes Devolucao
-- INSERT INTO filmes_devolucao (id_devolucao, id_filme_imprestimo) VALUES (1, 1);
-- INSERT INTO filmes_devolucao (id_devolucao, id_filme_imprestimo) VALUES (1, 2);
-- INSERT INTO filmes_devolucao (id_devolucao, id_filme_imprestimo) VALUES (2, 3);


-- Select Simples

-- Atores
-- SELECT * FROM atores;

-- Clientes
-- SELECT * FROM clientes;

-- Filmes
-- SELECT * FROM filmes;

-- Generos
-- SELECT * FROM generos;

-- Filmes e Generos 
-- SELECT f.id, f.titulo, g.genero, f.valor FROM filmes AS f, generos AS g WHERE f.id_genero = g.id;

-- Atores Filmes
-- SELECT * FROM atores_filme;

-- SELECT af.id, f.filme, a.nome, af.personagem FROM filmes AS f, atores AS a, atores_filme AS af
-- 	WHERE af.id_filme = f.id AND af.id_ator = a.id;


-- Filtros
-- SELECT * FROM generos WHERE ID = 2
-- SELECT * FROM generos WHERE genero = 'Terror';


-- Funções agregadas
-- SELECT SUM(valor) FROM filmes;
-- SELECT MAX(VALOR) FROM filmes;

-- Subconsulta
-- SELECT * FROM filmes WHERE valor IN (SELECT MAX(valor) FROM filmes);



-- Encontrar todos os filmes que cada ator atua
-- SELECT f.filme, g.genero, af.personagem
-- FROM atores_filme AS af, generos AS g, filmes AS f, atores AS a
-- WHERE f.id = af.id_filme AND g.id = f.id_cartegoria AND a.id = af.id_ator
-- AND a.nome = 'Felicity Jones';

-- Encotrar todos os filmes que os atores atuaram por genero
-- SELECT f.filme, a.nome, af.personagem
-- 	FROM atores_filme AS af, generos AS g, filmes AS f, atores AS a
-- 	WHERE f.id = af.id_filme AND g.id = f.id_cartegoria AND a.id = af.id_ator
-- 	AND g.genero = 'Terror' AND a.nome = 'Felicity Jones';

-- O que os clientes alugaram
-- SELECT e.id, c.nome, e.data, f.titulo, g.genero
-- 	FROM emprestimos AS e, clientes AS c, filmes AS f, generos AS g, dvds AS d, filmes_emprestimo AS fe
-- 	WHERE fe.id_emprestimo = e.id AND e.id_cliente = c.id AND f.id = d.id_filme AND fe.id_dvd = d.id
-- 	AND f.id_genero = g.id;

-- Verificando a devolução
-- SELECT de.id, c.nome, de.data, f.titulo
-- 	FROM devolucoes AS de, clientes AS c , filmes AS f, filmes_devolucao AS fd, dvds AS d, emprestimos AS e, filmes_emprestimo AS fe
-- 	WHERE fd.id_filme_imprestimo = fe.id AND e.id_cliente = c.id AND f.id= d.id_filme AND fe.id_dvd = d.id AND de.id_emprestimo = e.id 
-- 	AND de.id_emprestimo = e.id AND fd.id_devolucao = de.id;

-- Veridficar quanto cada cliente pagou
-- SELECT e.id, c.nome, c.sobrenome, SUM(f.valor)
-- FROM filmes_devolucao as fd, dvds as d, filmes as f, clientes as c, devolucoes as de, emprestimos as e, filmes_emprestimo as fe
-- WHERE fd.id_filme_imprestimo = fe.id
-- AND fd.id_devolucao = de.id
-- AND f.id = d.id_filme
-- AND fe.id_dvd = d.id
-- AND c.id = e.id_cliente
-- AND fe.id_emprestimo = e.id
-- GROUP BY e.id, c.nome, c.sobrenome

-- Atualizando dados
-- SELECT id, nome FROM atores ORDER BY id ASC;

-- UPDATE atores SET nome = 'Bread Pitt Silva' WHERE id = 1;

-- SELECT * FROM emprestimos;

-- UPDATE emprestimos SET data = '2019-06-03' WHERE id = 3;


-- Deletando dados
-- SELECT * FROM generos;

-- SELECT * FROM filmes; -- 1

-- DELETE FROM generos WHERE id = 3;


-- DELETE FROM generos WHERE id = 3; 

-- SELECT * FROM atores_filme;











