
SELECT JSON_EXTRACT(json, '$.Primeiro_Nome') AS PRIMEIRO_NOME,
    JSON_EXTRACT(json, '$.Data_Nascimento') AS DATA_NASCIMENTO,
    JSON_EXTRACT(json, '$.Salario') AS SALARIO
FROM tb_object_funcionario;

SELECT REPLACE(JSON_EXTRACT(json, '$.Primeiro_Nome'), '"', '') AS PRIMEIRO_NOME,
    REPLACE(JSON_EXTRACT(json, '$.Data_Nascimento'), '"', '') AS DATA_NASCIMENTO,
    JSON_EXTRACT(json, '$.Salario') AS SALARIO
FROM tb_object_funcionario;

SELECT JSON_UNQUOTE(JSON_EXTRACT(json, '$.Primeiro_Nome'), '"', '') AS PRIMEIRO_NOME,
    JSON_UNQUOTE(JSON_EXTRACT(json, '$.Data_Nascimento'), '"', '') AS DATA_NASCIMENTO,
    JSON_EXTRACT(json, '$.Salario') AS SALARIO
FROM tb_object_funcionario;

SELECT JSON_TYPE(JSON_EXTRACT(json, '$.Primeiro_Nome')) AS PRIMEIRO_NOME,
    JSON_TYPE(JSON_EXTRACT(json, '$.Data_Nascimento')) AS DATA_NASCIMENTO,
    JSON_TYPE(JSON_EXTRACT(json, '$.Salario')) AS SALARIO
FROM tb_object_funcionario;

SELECT JSON_UNQUOTE(JSON_EXTRACT(json, '$.Primeiro_Nome'), '"', '') AS PRIMEIRO_NOME,
    JSON_UNQUOTE(JSON_EXTRACT(json, '$.Data_Nascimento'), '"', '') AS DATA_NASCIMENTO,
    JSON_EXTRACT(json, '$.Salario') AS SALARIO
FROM tb_object_funcionario
WHERE YEAR(JSON_EXTRACT(json, '$.Data_Nascimento')) >= 1980;

/* Atividade manipulando datas */

SELECT JSON_EXTRACT(jsonvalue, '$.Nome_Departamento')
FROM tb_object_departamento
WHERE YEAR(JSON_EXTRACT(jsonvalue, '$.Data_Inicio_Gerente')) = 2005;