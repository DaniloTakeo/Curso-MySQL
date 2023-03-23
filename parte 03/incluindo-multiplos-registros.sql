USE vendas_sucos;

SELECT * FROM sucos_vendas.tabela_de_produtos;

SELECT codigo_do_produto AS codigo,
    nome_do_produto AS descritor,
    embalagem,
    tamanho,
    sabor,
    preco_de_lista AS preco_lista
FROM sucos_vendas.tabela_de_produtos
WHERE codigo_do_produto NOT IN
    (SELECT codigo FROM produtos);

INSERT INTO produtos 
SELECT codigo_do_produto AS codigo,
    nome_do_produto AS descritor,
    sabor,
    tamanho,
    embalagem,
    preco_de_lista AS preco_lista
FROM sucos_vendas.tabela_de_produtos
WHERE codigo_do_produto NOT IN
    (SELECT codigo FROM produtos);

SELECT * FROM produtos;

/* Atividade de inserção de múltiplos registros */
INSERT INTO clientes
SELECT CPF, 
    NOME, 
    ENDERECO_1 AS ENDERECO, 
    BAIRRO, 
    CIDADE, 
    ESTADO, 
    CEP,
    DATA_DE_NASCIMENTO AS  DATA_NASCIMENTO, 
    IDADE, 
    SEXO,
    LIMITE_DE_CREDITO AS LIMITE_CREDITO, 
    VOLUME_DE_COMPRA AS VOLUME_COMPRA,
    PRIMEIRA_COMPRA 
 FROM sucos_vendas.tabela_de_clientes 
 WHERE CPF NOT IN (SELECT CPF FROM clientes);