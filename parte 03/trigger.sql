CREATE TABLE tab_faturamento(
    data_venda DATE,
    total_venda FLOAT
);

SELECT * FROM tab_faturamento;
SELECT * FROM notas;
SELECT * FROM itens_notas;
SELECT * FROM clientes;
SELECT * FROM vendedores;
SELECT * FROM produtos;

INSERT INTO notas(numero, data_venda, cpf, matricula, imposto)
VALUES('100', '2023-03-02', '1471156710', '235', 0.1);
INSERT INTO itens_notas(numero, codiigo, quantidade, preco)
VALUES('100', '1000889', 100, 10),
VALUES('100', '1002334', 100, 10);

INSERT INTO notas(numero, data_venda, cpf, matricula, imposto)
VALUES('101', '2023-03-02', '1471156710', '235', 0.1);
INSERT INTO itens_notas(numero, codiigo, quantidade, preco)
VALUES('101', '1000889', 100, 10),
VALUES('101', '1002334', 100, 10);

INSERT INTO notas(numero, data_venda, cpf, matricula, imposto)
VALUES('102', '2023-03-02', '1471156710', '235', 0.1);
INSERT INTO itens_notas(numero, codiigo, quantidade, preco)
VALUES('102', '1000889', 100, 10),
VALUES('102', '1002334', 100, 10);

INSERT INTO notas(numero, data_venda, cpf, matricula, imposto)
VALUES('103', '2023-03-02', '1471156710', '235', 0.1);
INSERT INTO itens_notas(numero, codiigo, quantidade, preco)
VALUES('103', '1000889', 100, 10),
VALUES('103', '1002334', 100, 10);

INSERT INTO notas(numero, data_venda, cpf, matricula, imposto)
VALUES('104', '2023-03-02', '1471156710', '235', 0.1);
INSERT INTO itens_notas(numero, codiigo, quantidade, preco)
VALUES('104', '1000889', 100, 10),
VALUES('104', '1002334', 100, 10);

INSERT INTO notas(numero, data_venda, cpf, matricula, imposto)
VALUES('105', '2023-03-02', '1471156710', '235', 0.1);
INSERT INTO itens_notas(numero, codiigo, quantidade, preco)
VALUES('105', '1000889', 100, 10),
VALUES('105', '1002334', 100, 10);

INSERT INTO tab_faturamento
SELECT A.data_venda, SUM(B.quantidade * B.preco) AS total_venda 
FROM notas A
INNER JOIN itens_notas B
ON A.numero = B.numero
GROUP BY data_venda;

SELECT A.data_venda, SUM(B.quantidade * B.preco) AS total_venda 
FROM notas A
INNER JOIN itens_notas B
ON A.numero = B.numero
GROUP BY data_venda;

DELETE FROM tab_faturamento;
DELETE FROM itens_notas;
DELETE FROM notas;

DELIMITER //
CREATE TRIGGER tg_calcula_faturamento_insert
AFTER INSERT ON itens_notas
FOR EACH ROW BEGIN
    DELETE FROM tab_faturamento;
    INSERT INTO tab_faturamento
    SELECT A.data_venda, SUM(B.quantidade * B.preco) AS total_venda
    FROM notas A
    INNER JOIN itens_notas B
    GROUP BY data_venda;
END//

INSERT INTO notas(numero, data_venda, cpf, matricula, imposto)
VALUES('100', '2023-03-02', '1471156710', '235', 0.1);
INSERT INTO itens_notas(numero, codiigo, quantidade, preco)
VALUES('100', '1000889', 100, 10),
VALUES('100', '1002334', 100, 10);

INSERT INTO notas(numero, data_venda, cpf, matricula, imposto)
VALUES('101', '2023-03-02', '1471156710', '235', 0.1);
INSERT INTO itens_notas(numero, codiigo, quantidade, preco)
VALUES('101', '1000889', 100, 10),
VALUES('101', '1002334', 100, 10);

INSERT INTO notas(numero, data_venda, cpf, matricula, imposto)
VALUES('103', '2023-03-02', '1471156710', '235', 0.1);
INSERT INTO itens_notas(numero, codiigo, quantidade, preco)
VALUES('103', '1000889', 100, 10),
VALUES('103', '1002334', 100, 10);