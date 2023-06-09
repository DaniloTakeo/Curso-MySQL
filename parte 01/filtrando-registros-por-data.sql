SELECT * FROM tbCliente;

SELECT * FROM tbCliente WHERE DATA_NASCIMENTO = '1995-01-13';

SELECT * FROM tbCliente WHERE DATA_NASCIMENTO > '1995-01-13';

SELECT * FROM tbCliente WHERE DATA_NASCIMENTO < '1995-01-13';

SELECT * FROM tbCliente WHERE YEAR(DATA_NASCIMENTO) = 1995;

SELECT * FROM tbCliente WHERE MONTH(DATA_NASCIMENTO) = 10;

/* Atividade filtrar vendedores pelo ano de admissão */
SELECT * FROM tabela_de_vendedores WHERE YEAR(DATA_DA_ADMISSAO) >= 2016;