-- CREATE DATABASE secao03;

-- CREATE TABLE tipos_produto(
--	id SERIAL PRIMARY KEY,
--	descricao CHARACTER VARYING(50) NOT NULL
-- );

-- CREATE TABLE produtos (
--	id SERIAL PRIMARY KEY, 
--	descricao CHARACTER VARYING(50) NOT NULL,
--	preco MONEY NOT NULL,
--	id_tipo_produto INT REFERENCES tipos_produto(id) NOT NULL
-- );

-- CREATE TABLE pacientes(
--	id SERIAL PRIMARY KEY NOT NULL,
--	nome CHARACTER VARYING(50) NOT NULL,
--	endereco CHARACTER VARYING(50) NOT NULL,
--	bairro CHARACTER VARYING(50) NOT NULL,
--	cidade VARCHAR(50) NOT NULL,
--	estado CHAR(2) NOT NULL,
--	cep VARCHAR(9) NOT NULL,
--	data_nascimento DATE NOT NULL
-- );

-- CREATE TABLE professores(
--	id SERIAL PRIMARY KEY,
--	telefone INT NOT NULL,
--	nome CHARACTER VARYING(50) NOT NULL
-- );

-- CREATE TABLE turmas(
--	id SERIAL PRIMARY KEY,
--	capacidade INT NOT NULL,
--	id_professor INT REFERENCES professores(id)
-- );