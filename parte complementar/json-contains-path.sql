CREATE TABLE X(
    Y JSON
);

INSERT INTO X VALUES('{"nome": "Joao", "telefone": "2293-3343"}');
INSERT INTO X VALUES('{"nome": "Jonas"}');

SELECT Y FROM X;

SELECT JSON_CONTAINS_PATH(Y, 'ONE', '$.telefone') FROM X;

INSERT INTO X VALUES('{"nome": "Alberto", "endereco": "Avenida X numero Y"}');

SELECT JSON_CONTAINS_PATH(Y, 'ONE', '$.telefone') FROM X;

SELECT Y FROM X;

SELECT JSON_CONTAINS_PATH(Y, 'ONE', '$.telefone', '$.endereco') FROM X;

INSERT INTO X VALUES('{"nome": "Maria", "endereco": "Rua X numero Y", "telefone": "2293-3343"}');

SELECT JSON_CONTAINS_PATH(Y, 'ONE', '$.telefone', '$.endereco') FROM X;
SELECT JSON_CONTAINS_PATH(Y, 'ALL', '$.telefone', '$.endereco') FROM X;
