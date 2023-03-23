START TRANSACTION;

SELECT * FROM vendedores;

UPDATE vendedores SET comissao = comissao * 1.15;

ROLLBACK;

COMMIT;

/* ------------------------------------------------------------------------------------------- */

START TRANSACTION;

INSERT INTO vendedores
VALUES('99999', 'João da Silva', 'Icaraí', 0.08, '2012-01-15', 0);

UPDATE vendedores SET comissao = comissao * 1.15;

INSERT INTO vendedores
VALUES('99998', 'João da Silva 2', 'Icaraí', 0.08, '2012-01-15', 0);

ROLLBACK;