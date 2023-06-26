SELECT * 
FROM tipos_produtos;

#DTL 

-- Transaction
START TRANSACTION;
	INSERT INTO tipos_produtos (descricao) VALUES ('Farmacia');
    INSERT INTO tipos_produtos (descricao) VALUES ('Escritorio');
    
-- Commit
COMMIT;

-- ROLLBACK
ROLLBACK;
