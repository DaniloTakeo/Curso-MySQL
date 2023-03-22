/* Doc em w3schools ou no site da própria MySQL */

CONCAT(); /* Concatenar Strings */
LTRIM(); /* Retirar espaços da esquerda */
RTRIM(); /* Retirar espaços da direita */
TRIM(); /* Retirar espaços */
LCASE(); /* Deixar texto em lowercase */
LOWER(); /* Igual a LCASE */
UCASE(); /* Deixar o texto em UPPERCASE */
UPPER(); /* Igual a UCASE */
SUBSTRING(); /* Recortar pedaços de um texto */
LENGTH(); /* Contar os caracteres de uma string */
INSTR(); /* Verificar se uma string possui outra contida */

SELECT LTRIM('      Olá') AS RESULTADO;

SELECT RTRIM('Olá      ') AS RESULTADO;

SELECT TRIM('     Olá     ') AS RESULTADO;

SELECT CONCAT('Olá', ' ', 'tudo bem', '?') AS RESULTADO;

SELECT UPPER('olá, tudo bem?') AS RESULTADO;

SELECT SUBSTRING('Olá, tudo bem?', 6) AS RESULTADO;

SELECT CONCAT(NOME, ' (', CPF, ') ') AS RESULTADO FROM TABELA_DE_CLIENTES;

/* Atividade funções string */
SELECT NOME, CONCAT(ENDERECO1, ' ', BAIRRO, ' ', CIDADE, ' ', ESTADO) AS ENDERECO_COMPLETO FROM TABELA_DE_CLIENTES;