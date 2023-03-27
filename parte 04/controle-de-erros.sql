SELECT * FROM produtos;

CALL inclui_novo_produto_parametros(
    '4000001',
    'Sabor do Pantanal 1 Litro - Melância',
    'Melância',
    '1 Litro',
    'PET',
    4.67
);

CALL inclui_novo_produto_parametros(
    '4000001',
    'Sabor do Pantanal 1 Litro - Melância',
    'Melância',
    '1 Litro',
    'PET',
    4.67
);

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
    DECLARE mensagem VARCHAR(50);
    INSERT produtos (CODIGO_DO_PRODUTO, NOME_DO_PRODUTO, SABOR, TAMANHO, EMBALAGEM, PRECO_DE_LISTA)
    VALUES (vCodigo, vNome, vSabor, vTamanho, vEmbalagem, vPreco);

    SET mensagem = 'Produto incluído com sucesso';
    SELECT mensagem;
END$$

DELIMITER ;

/* -------------------------------------------------------------------------------------------------------------- */

CALL inclui_novo_produto_parametros(
    '4000002',
    'Sabor do Pantanal 1 Litro - Melância',
    'Melância',
    '1 Litro',
    'PET',
    4.67
);

CALL inclui_novo_produto_parametros(
    '4000002',
    'Sabor do Pantanal 1 Litro - Melância',
    'Melância',
    '1 Litro',
    'PET',
    4.67
);

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
    DECLARE mensagem VARCHAR(100);
    DECLARE EXIT HANDLER FOR 1062
        BEGIN
            SET mensagem = 'Problema de chave primária repetida';
            SELECT mensagem;
        END;
    INSERT produtos (CODIGO_DO_PRODUTO, NOME_DO_PRODUTO, SABOR, TAMANHO, EMBALAGEM, PRECO_DE_LISTA)
    VALUES (vCodigo, vNome, vSabor, vTamanho, vEmbalagem, vPreco);
END$$

DELIMITER ;

/* -------------------------------------------------------------------------------------------------------------- */

CALL inclui_novo_produto_parametros(
    '4000003',
    'Sabor do Pantanal 1 Litro - Melância',
    'Melância',
    '1 Litro',
    'PET',
    4.67
);

CALL inclui_novo_produto_parametros(
    '4000003',
    'Sabor do Pantanal 1 Litro - Melância',
    'Melância',
    '1 Litro',
    'PET',
    4.67
);