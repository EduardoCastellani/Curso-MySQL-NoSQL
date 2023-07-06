-- Alter
ALTER TABLE tipos_produtos ADD peso REAL;

-- Verificando se o novo campo foi realmente adicionado
SELECT * FROM tipos_produtos;


-- Drop 
DROP TABLE tipos_produtos;


-- Não existe o comando abaixo no SQLite. Basta deletar o arquivo do banco de dados;
DROP DATABASE secao04;
