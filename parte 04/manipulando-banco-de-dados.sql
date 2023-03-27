INSERT INTO tabela_de_produtos (CODIGO_DO_PRODUTO,NOME_DO_PRODUTO,SABOR,TAMANHO,EMBALAGEM,PRECO_DE_LISTA)
    VALUES ('2001001','Sabor da Serra 700 ml - Manga','Manga','700 ml','Garrafa',7.50),
    ('2001000','Sabor da Serra  700 ml - Melão','Melão','700 ml','Garrafa',7.50),
    ('2001002','Sabor da Serra  700 ml - Graviola','Graviola','700 ml','Garrafa',7.50),
    ('2001003','Sabor da Serra  700 ml - Tangerina','Tangerina','700 ml','Garrafa',7.50),
    ('2001004','Sabor da Serra  700 ml - Abacate','Abacate','700 ml','Garrafa',7.50),
    ('2001005','Sabor da Serra  700 ml - Açai','Açai','700 ml','Garrafa',7.50),
    ('2001006','Sabor da Serra  1 Litro - Manga','Manga','1 Litro','Garrafa',7.50),
    ('2001007','Sabor da Serra  1 Litro - Melão','Melão','1 Litro','Garrafa',7.50),
    ('2001008','Sabor da Serra  1 Litro - Graviola','Graviola','1 Litro','Garrafa',7.50),
    ('2001009','Sabor da Serra  1 Litro - Tangerina','Tangerina','1 Litro','Garrafa',7.50),
    ('2001010','Sabor da Serra  1 Litro - Abacate','Abacate','1 Litro','Garrafa',7.50),
    ('2001011','Sabor da Serra  1 Litro - Açai','Açai','1 Litro','Garrafa',7.50);

SELECT * FROM tabela_de_produtos WHERE NOME_DO_PRODUTO LIKE 'Sabor da Serra%';

UPDATE tabela_de_produtos SET PRECO_DE_LISTA = 8 WHERE NOME_DO_PRODUTO LIKE 'Sabor da Serra%';

SELECT * FROM tabela_de_produtos WHERE NOME_DO_PRODUTO LIKE 'Sabor da Serra%';

DELETE FROM tabela_de_produtos WHERE NOME_DO_PRODUTO LIKE 'Sabor da Serra%';

SELECT * FROM tabela_de_produtos WHERE NOME_DO_PRODUTO LIKE 'Sabor da Serra%';

/* -------------------------------------------------------------------------------------------- */

DROP PROCEDURE IF EXISTS manipulacao_dados;

DELIMITER $$

CREATE PROCEDURE manipulacao_dados()
BEGIN
    INSERT INTO tabela_de_produtos (CODIGO_DO_PRODUTO, NOME_DO_PRODUTO, SABOR, TAMANHO, EMBALAGEM, PRECO_DE_LISTA)
        VALUES ('2001001','Sabor da Serra 700 ml - Manga','Manga','700 ml','Garrafa',7.50),
        ('2001000','Sabor da Serra  700 ml - Melão','Melão','700 ml','Garrafa',7.50),
        ('2001002','Sabor da Serra  700 ml - Graviola','Graviola','700 ml','Garrafa',7.50),
        ('2001003','Sabor da Serra  700 ml - Tangerina','Tangerina','700 ml','Garrafa',7.50),
        ('2001004','Sabor da Serra  700 ml - Abacate','Abacate','700 ml','Garrafa',7.50),
        ('2001005','Sabor da Serra  700 ml - Açai','Açai','700 ml','Garrafa',7.50),
        ('2001006','Sabor da Serra  1 Litro - Manga','Manga','1 Litro','Garrafa',7.50),
        ('2001007','Sabor da Serra  1 Litro - Melão','Melão','1 Litro','Garrafa',7.50),
        ('2001008','Sabor da Serra  1 Litro - Graviola','Graviola','1 Litro','Garrafa',7.50),
        ('2001009','Sabor da Serra  1 Litro - Tangerina','Tangerina','1 Litro','Garrafa',7.50),
        ('2001010','Sabor da Serra  1 Litro - Abacate','Abacate','1 Litro','Garrafa',7.50),
        ('2001011','Sabor da Serra  1 Litro - Açai','Açai','1 Litro','Garrafa',7.50);

    SELECT * FROM tabela_de_produtos WHERE NOME_DO_PRODUTO LIKE 'Sabor da Serra%';

    UPDATE tabela_de_produtos SET PRECO_DE_LISTA = 8 WHERE NOME_DO_PRODUTO LIKE 'Sabor da Serra%';

    SELECT * FROM tabela_de_produtos WHERE NOME_DO_PRODUTO LIKE 'Sabor da Serra%';

    DELETE FROM tabela_de_produtos WHERE NOME_DO_PRODUTO LIKE 'Sabor da Serra%';

    SELECT * FROM tabela_de_produtos WHERE NOME_DO_PRODUTO LIKE 'Sabor da Serra%';
END$$

DELIMITER ;

/* -------------------------------------------------------------------------------------------- */

CALL manipulacao_dados;

/* -------------------------------------------------------------------------------------------- */

DROP PROCEDURE IF EXISTS inclui_novo_produto;

DELIMITER $$

CREATE PROCEDURE inclui_novo_produto()
BEGIN
    DECLARE vCodigo VARCHAR(50) DEFAULT '3000001';
    DECLARE vNome VARCHAR(50) DEFAULT 'Sabor do Mar 700ml - Manga';
    DECLARE vSabor VARCHAR(50) DEFAULT 'Manga';
    DECLARE vTamanho VARCHAR(50) DEFAULT '700 ml';
    DECLARE vEmbalagem VARCHAR(50) DEFAULT 'Garrafa';
    DECLARE vPreco DECIMAL(10, 2) DEFAULT 7.50;

    INSERT tabela_de_produtos (CODIGO_DO_PRODUTO, NOME_DO_PRODUTO, SABOR, TAMANHO, EMBALAGEM, PRECO_DE_LISTA)
    VALUES (vCodigo, vNome, vSabor, vTamanho, vEmbalagem, vPreco);
END$$

DELIMITER ;

/* -------------------------------------------------------------------------------------------- */

CALL inclui_novo_produto;

SELECT * FROM tabela_de_produtos;

/* Atividade de manipulação de DB */

DROP PROCEDURE IF EXISTS calcula_idade;

DELIMITER $$

CREATE PROCEDURE calcula_idade()
BEGIN
    UPDATE tabela_de_clientes set idade =  TIMESTAMPDIFF(YEAR, data_de_nascimento, CURDATE());
END$$

DELIMITER ;