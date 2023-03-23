CREATE TABLE produtos2(
    codigo VARCHAR(10) NOT NULL,
    descritor VARCHAR(100),
    sabor VARCHAR(50),
    tamanho VARCHAR(50),
    embalagem VARCHAR(50),
    preco_lista FLOAT,

    CONSTRAINT pk_codigo PRIMARY KEY(codigo)
);

SELECT * FROM produtos2;

INSERT INTO produtos2
SELECT * FROM produtos;

UPDATE produtos2 SET preco_lista = 8;

DELETE FROM produtos2;

/* Atividade de exclusão de todos os dados da tabela */
DELETE FROM notas;

DELETE FROM itens_notas;