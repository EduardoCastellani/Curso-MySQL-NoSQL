#DML

-- Insert
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Notebook', '1200', 1);
INSERT INTO tipos_produtos (descricao) VALUES ('Apple');
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Macbook Air', '5200', 3);
INSERT INTO produtos VALUES (NULL, 'iPad', '2200', 3);

-- UPDATE
UPDATE produtos SET codigo_tipo = 3 WHERE codigo = 6;

UPDATE produtos SET descricao = 'Impressora Lase', preco = '700' WHERE codigo = 4;

# SEMPRE USAR RESTRIÇÕES(WHERE) PARA UPDATE E DELETE

-- DELETE

DELETE FROM produtos WHERE codigo = 4;