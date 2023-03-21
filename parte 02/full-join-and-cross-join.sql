SELECT * FROM tabela_de_vendedores;

SELECT * FROM TABELA_DE_CLIENTES;

SELECT * FROM tabela_de_vendedores INNER JOIN TABELA_DE_CLIENTES
ON tabela_de_vendedores.BAIRRO = TABELA_DE_CLIENTES.BAIRRO;

SELECT tabela_de_vendedores.BAIRRO,
    tabela_de_vendedores.NOME,
    DE_FERIAS,
    TABELA_DE_CLIENTES.BAIRRO,
    TABELA_DE_CLIENTES.NOME
FROM tabela_de_vendedores INNER JOIN TABELA_DE_CLIENTES
ON tabela_de_vendedores.BAIRRO = TABELA_DE_CLIENTES.BAIRRO;

SELECT tabela_de_vendedores.BAIRRO,
    tabela_de_vendedores.NOME,
    DE_FERIAS,
    TABELA_DE_CLIENTES.BAIRRO,
    TABELA_DE_CLIENTES.NOME
FROM tabela_de_vendedores LEFT JOIN TABELA_DE_CLIENTES
ON tabela_de_vendedores.BAIRRO = TABELA_DE_CLIENTES.BAIRRO;

SELECT tabela_de_vendedores.BAIRRO,
    tabela_de_vendedores.NOME,
    DE_FERIAS,
    TABELA_DE_CLIENTES.BAIRRO,
    TABELA_DE_CLIENTES.NOME
FROM tabela_de_vendedores RIGHT JOIN TABELA_DE_CLIENTES
ON tabela_de_vendedores.BAIRRO = TABELA_DE_CLIENTES.BAIRRO;

/* MySQL não suporta a clausúla FULL JOIN */
SELECT tabela_de_vendedores.BAIRRO,
    tabela_de_vendedores.NOME,
    DE_FERIAS,
    TABELA_DE_CLIENTES.BAIRRO,
    TABELA_DE_CLIENTES.NOME
FROM tabela_de_vendedores FULL JOIN TABELA_DE_CLIENTES
ON tabela_de_vendedores.BAIRRO = TABELA_DE_CLIENTES.BAIRRO;

/* CROSS JOIN */
SELECT tabela_de_vendedores.BAIRRO,
    tabela_de_vendedores.NOME,
    DE_FERIAS,
    TABELA_DE_CLIENTES.BAIRRO,
    TABELA_DE_CLIENTES.NOME
FROM tabela_de_vendedores, TABELA_DE_CLIENTES;