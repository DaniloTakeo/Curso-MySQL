ADDTIME(); /* Somar um determinado período a uma data. */
ADDDATE(); /* Adicionar um intervalo de dias na data */
DATE_ADD(); /* Mesma função do add date */

/* Exemplo */
ADDDATE('2022-02-12' INTERVAL 1 YEAR);

CURDATE(); /* Retorna a data atual */
CURRENT_TIMESTAMP(); /* Retornar data e hora atual */
CURRENT_TIME(); /* Retorna apenas a hora atual */
DATEDIFF(); /* Retorna a diferença entre duas datas */

/* Exemplo */
DATEDIFF('2022-02-12', '2021-02-12');

DAYNAME(); /* Retorna o nome do dia da semana da data passada */
DAY(); /* Extrai o dia da data */
MONTH(); /* Extrai o mês da data */
MONTHNAME(); /* Retorna o nome do mês da data passada */
YEAR(); /* Extrai o ano da data */

SELECT CURDATE();

SELECT CURRENT_TIME();

SELECT CURRENT_TIMESTAMP();

SELECT YEAR(CURRENT_TIMESTAMP());

SELECT DAY(CURRENT_TIMESTAMP());

SELECT MONTHNAME(CURRENT_TIMESTAMP());

SELECT DATEDIFF(CURRENT_TIMESTAMP(), '1994-06-16');

SELECT DATE_SUB(CURRENT_TIMESTAMP(), INTERVAL 5 DAY) AS RESULTADO;

SELECT DISTINCT DATA_VENDA, 
    DAYNAME(DATA_VENDA) AS DIA, 
    MONTHNAME(DATA_VENDA) AS MES, 
    YEAR(DATA_VENDA) AS ANO
FROM NOTAS_FISCAIS;

/* Atividade Funções DATAS */
SELECT NOME, DATEDIFF(YEAR, DATA_NASCIMENTO, CURDATE()) AS IDADE_ATUAL
FROM TABELA_DE_CLIENTES;