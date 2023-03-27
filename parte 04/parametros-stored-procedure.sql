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

    INSERT produtos (CODIGO_DO_PRODUTO, NOME_DO_PRODUTO, SABOR, TAMANHO, EMBALAGEM, PRECO_DE_LISTA)
    VALUES (vCodigo, vNome, vSabor, vTamanho, vEmbalagem, vPreco);
END$$

DELIMITER ;

/* -------------------------------------------------------------------------------------------------------------- */

DROP PROCEDURE IF EXISTS inclui_novo_produto_parametros;

DELIMITER $$

CREATE PROCEDURE inclui_novo_produto_parametros(
    vCodigo VARCHAR(50),
    vNome VARCHAR(50),
    vSabor VARCHAR(50),
    vTamanho VARCHAR(50),
    vEmbalagem VARCHAR(50),
    vPreco DECIMAL(10, 2)
    )
BEGIN
    INSERT produtos (CODIGO_DO_PRODUTO, NOME_DO_PRODUTO, SABOR, TAMANHO, EMBALAGEM, PRECO_DE_LISTA)
    VALUES (vCodigo, vNome, vSabor, vTamanho, vEmbalagem, vPreco);
END$$

DELIMITER ;

/* -------------------------------------------------------------------------------------------------------------- */

CALL inclui_novo_produto_parametros(
    '4000001',
    'Sabor do Pantanal 1 Litro - Melância',
    'Melância',
    '1 Litro',
    'PET',
    4.67
);

SELECT * FROM produtos WHERE codigo_do_produto = '4000001';

/* Atividade Stored Procedure com parâmetros */

DROP PROCEDURE IF EXISTS reajuste_comissao;

DELIMITER $$

CREATE PROCEDURE reajuste_comissao(percentual FLOAT, matriculaVendedor VARCHAR(5))
BEGIN
    UPDATE vendedores SET comissao = percentual WHERE matricula = matriculaVendedor;
END$$

DELIMITER ;