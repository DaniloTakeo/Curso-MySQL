SELECT * FROM TABELA_DE_PRODUTOS;

SELECT * FROM TABELA_DE_PRODUTOS ORDER BY PRECO_DE_LISTA;

SELECT * FROM TABELA_DE_PRODUTOS ORDER BY PRECO_DE_LISTA DESC;

SELECT * FROM TABELA_DE_PRODUTOS ORDER BY NOME_DO_PRODUTO;

SELECT * FROM TABELA_DE_PRODUTOS ORDER BY NOME_DO_PRODUTO DESC;

SELECT * FROM TABELA_DE_PRODUTOS ORDER BY EMBALAGEM, NOME_DO_PRODUTO;

SELECT * FROM TABELA_DE_PRODUTOS ORDER BY EMBALAGEM DESC, NOME_DO_PRODUTO ASC;

/* Atividade ORDER BY */
SELECT * FROM TABELA_DE_PRODUTOS WHERE NOME_DO_PRODUTO = 'Linha Refrescante - 1 Litro - Morango/Limão';

SELECT * FROM ITENS_NOTAS_FISCAIS WHERE CODIGO_DO_PRODUTO = '1101035' ORDER BY QUANTIDADE DESC;