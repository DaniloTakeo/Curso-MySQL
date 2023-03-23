SELECT * FROM notas;
SELECT * FROM itens_notas;
SELECT * FROM tab_faturamento;

UPDATE itens_notas SET quantidade = 200 WHERE numero = '104' AND codigo = '1002334';

DELETE FROM itens_notas WHERE numero = '104' AND codigo = '1002334';

DELIMITER //
CREATE TRIGGER tg_calcula_faturamento_update
AFTER UPDATE ON itens_notas
FOR EACH ROW BEGIN
    DELETE FROM tab_faturamento;
    INSERT INTO tab_faturamento
    SELECT A.data_venda, SUM(B.quantidade * B.preco) AS total_venda
    FROM notas A
    INNER JOIN itens_notas B
    GROUP BY data_venda;
END//

DELIMITER //
CREATE TRIGGER tg_calcula_faturamento_delete
AFTER DELETE ON itens_notas
FOR EACH ROW BEGIN
    DELETE FROM tab_faturamento;
    INSERT INTO tab_faturamento
    SELECT A.data_venda, SUM(B.quantidade * B.preco) AS total_venda
    FROM notas A
    INNER JOIN itens_notas B
    GROUP BY data_venda;
END//