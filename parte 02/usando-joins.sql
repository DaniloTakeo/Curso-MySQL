SELECT * FROM tabela_de_vendedores;

SELECT * FROM NOTAS_FISCAIS;

SELECT * FROM tabela_de_vendedores a INNER JOIN NOTAS_FISCAIS b
ON a.MATRICULA = b.MATRICULA;

SELECT a.MATRICULA, a.NOME, COUNT(*) FROM tabela_de_vendedores a INNER JOIN NOTAS_FISCAIS b
ON a.MATRICULA = b.MATRICULA
GROUP BY a.MATRICULA, a.NOME;

SELECT a.MATRICULA, a.NOME, COUNT(*) FROM tabela_de_vendedores a, NOTAS_FISCAIS b
WHERE a.MATRICULA = b.MATRICULA
GROUP BY a.MATRICULA, a.NOME;

/* Atividade JOINS */
SELECT YEAR(DATA_VENDA), SUM(QUANTIDADE * PRECO) AS FATURAMENTO
FROM NOTAS_FISCAIS NF INNER JOIN ITENS_NOTAS_FISCAIS INF
ON NF.NUMERO = INF.NUMERO
GROUP BY YEAR(DATA_VENDA);  