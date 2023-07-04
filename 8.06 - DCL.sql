-- Criar um usario

-- CREATE USER estagario WITH PASSWORD '123456'; 

-- CREATE TABLE empresas(
--	id SERIAL PRIMARY KEY,
--	nome VARCHAR(50) NOT NULL,
--	funcionarios INT NOT NULL,
--	cidade VARCHAR(50) NOT NULL
-- );

-- Concedendo acessos
-- GRANT ALL ON empresas TO estagario;

-- GRANT USAGE, SELECT ON SEQUENCE empresas_id_seq TO estagario;

-- INSERT INTO empresas (nome, funcionarios, cidade) VALUES ('Apple', 4500, 'Cupertino');
-- INSERT INTO empresas (nome, funcionarios, cidade) VALUES ('Microsoft', 23500, 'Palo Alto');
-- INSERT INTO empresas (nome, funcionarios, cidade) VALUES ('Amazon', 9000, 'Santos');

-- UPDATE empresas SET funcionarios = 1500 WHERE id = 3;

-- DELETE FROM empresas WHERE id = 2;

-- SELECT * FROM empresas; 




-- Removendo acessos do para outros testes;

-- REVOKE ALL ON empresas FROM estagario;


-- criando acessos de leitura para estagario
-- GRANT SELECT ON empresas TO estagario;

-- REVOKE USAGE, SELECT ON SEQUENCE empresas_id_seq FROM estagario;
-- DROP USER estagario;






