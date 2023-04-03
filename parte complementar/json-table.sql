CREATE TABLE X(
    Y JSON
);

INSERT INTO X 
VALUES('{"hobby": [{"nome": "praia", "local": "ar livre"}, {"nome": "futebol", "local": "ar livire}, {"nome": "cinema", "local": "fechado"}]}');

SELECT JSON_EXTRACT(Y, '$.hobby[0].nome') AS NOME, JSON_EXTRACT(Y, '$.hooby[0].local') AS LOCAL  FROM X
UNION
SELECT JSON_EXTRACT(Y, '$.hobby[1].nome') AS NOME, JSON_EXTRACT(Y, '$.hooby[1].local') AS LOCAL FROM X
UNION
SELECT JSON_EXTRACT(Y, '$.hobby[2].nome') AS NOME, JSON_EXTRACT(Y, '$.hooby[2].local') AS LOCAL FROM X;

UPDATE X SET Y = '{"hobby": [{"nome": "praia", "local": "ar livre"}, {"nome": "futebol", "local": "ar livire},
    {"nome": "cinema", "local": "fechado"}, {"nome": "piscina", "local", "ar livre"}]}';

SELECT JSON_EXTRACT(Y, '$.hobby[0].nome') AS NOME, JSON_EXTRACT(Y, '$.hooby[0].local') AS LOCAL  FROM X
UNION
SELECT JSON_EXTRACT(Y, '$.hobby[1].nome') AS NOME, JSON_EXTRACT(Y, '$.hooby[1].local') AS LOCAL FROM X
UNION
SELECT JSON_EXTRACT(Y, '$.hobby[2].nome') AS NOME, JSON_EXTRACT(Y, '$.hooby[2].local') AS LOCAL FROM X;
UNION
SELECT JSON_EXTRACT(Y, '$.hobby[3].nome') AS NOME, JSON_EXTRACT(Y, '$.hooby[3].local') AS LOCAL FROM X;

SELECT T2.nome, T2.local FROM X
CROSS JOIN
JSON_TABLE(JSON_EXTRACT(Y, '$.hobby'), '$.[*]'
    COLUMNS(nome VARCHAR(10) PATH '$.nome',
        local VARCHAR(10 PATH '$.local'))) T2;

UPDATE X SET Y = '{"hobby": [{"nome": "praia", "local": "ar livre"}, {"nome": "futebol", "local": "ar livire},
    {"nome": "cinema", "local": "fechado"}, {"nome": "piscina", "local", "ar livre"}, {"nome": "tenis", "local": "ar livire"}}]}';

/* JSON TABLE exercício */
SELECT JSON_EXTRACT(JSONVALUE, "$.Nome_Departamento"), JSON_EXTRACT(JSONVALUE, "$.Projeto[0].Nome_Projeto")
,  t2.CPF_FUNCIONARIO, t2.Horas FROM tb_object_departamento_projeto_trabalha_em
CROSS JOIN 
JSON_TABLE (JSON_EXTRACT(JSONVALUE, "$.Projeto[0].Horas_Trabalhadas"), "$[*]"
COLUMNS (CPF_FUNCIONARIO VARCHAR(10) PATH "$.Cpf_Funcionario", Horas integer PATH "$.Horas")) t2