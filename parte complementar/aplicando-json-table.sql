SELECT JSON_UNQUOTE(JSON_EXTRACT(json, '$.Cpf')) AS CPF, 
    JSON_UNQUOTE(JSON_EXTRACT(json, '$.Primeiro_Nome')) AS PRIMEIRO_NOME,
    JSON_UNQUOTE(JSON_EXTRACT(json, '$.Nome_Meio')) AS NOME_MEIO,
    JSON_UNQUOTE(JSON_EXTRACT(json, '$.Ultimo_Nome')) AS ULTIMO_NOME,
    T1.NOME_DEPENDENTE,
    T1.SEXO,
    T1.PARENTESCO,
    T1.DATA_NASCIMENTO
FROM tb_object_funcionario
CROSS JOIN
JSON_TABLE(JSON_EXTRACT(json, '$.Dependentes'), '$[*]'
    COLUMNS(NOME_DEPENDENTE VARCHAR(30) PATH '$.Nome_Dependente',
        SEXO VARCHAR(2) PATH '$.Sexo',
        PARENTESCO VARCHAR(20) PATH '$.Parentesco',
        DATA_NASCIMENTO DATETIME PATH '$.Data_Nascimento')) T1;

SELECT JSON_UNQUOTE(JSON_EXTRACT(json, '$.Cpf')) AS CPF, 
    JSON_UNQUOTE(JSON_EXTRACT(json, '$.Primeiro_Nome')) AS PRIMEIRO_NOME,
    JSON_UNQUOTE(JSON_EXTRACT(json, '$.Nome_Meio')) AS NOME_MEIO,
    JSON_UNQUOTE(JSON_EXTRACT(json, '$.Ultimo_Nome')) AS ULTIMO_NOME,
    T1.NOME_DEPENDENTE,
    T1.SEXO,
    T1.PARENTESCO,
    T1.DATA_NASCIMENTO,
    TD.Nome_Departamento AS NOME_DEPARTAMENTO
FROM tb_object_funcionario
CROSS JOIN
JSON_TABLE(JSON_EXTRACT(json, '$.Dependentes'), '$[*]'
    COLUMNS(NOME_DEPENDENTE VARCHAR(30) PATH '$.Nome_Dependente',
        SEXO VARCHAR(2) PATH '$.Sexo',
        PARENTESCO VARCHAR(20) PATH '$.Parentesco',
        DATA_NASCIMENTO DATETIME PATH '$.Data_Nascimento')) T1
INNER JOIN tb_object_departamento TD
ON TD.numero_departamento = JSON_UNQUOTE(JSON_EXTRACT(json, '$.Numero_Departamento'));

/* Atividade aplicando JSON_TABLE */

SELECT JSON_EXTRACT(JSONVALUE, "$.Nome_Departamento"), JSON_EXTRACT(JSONVALUE, "$.Projeto[0].Nome_Projeto")
,  t2.CPF_FUNCIONARIO, t2.Horas FROM tb_object_departamento_projeto_trabalha_em
CROSS JOIN 
JSON_TABLE (JSON_EXTRACT(JSONVALUE, "$.Projeto[0].Horas_Trabalhadas"), "$[*]"
COLUMNS (CPF_FUNCIONARIO VARCHAR(10) PATH "$.Cpf_Funcionario", Horas integer PATH "$.Horas")) t2
UNION
SELECT JSON_EXTRACT(JSONVALUE, "$.Nome_Departamento"), JSON_EXTRACT(JSONVALUE, "$.Projeto[1].Nome_Projeto")
, t2.CPF_FUNCIONARIO, t2.Horas FROM tb_object_departamento_projeto_trabalha_em
CROSS JOIN 
JSON_TABLE (JSON_EXTRACT(JSONVALUE, "$.Projeto[1].Horas_Trabalhadas"), "$[*]"
COLUMNS (CPF_FUNCIONARIO VARCHAR(10) PATH "$.Cpf_Funcionario", Horas integer PATH "$.Horas")) t2;