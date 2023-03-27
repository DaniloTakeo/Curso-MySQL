SELECT * FROM produtos WHERE codigo_do_produto = '4000001';

CALL inclui_novo_produto_parametros(
    '4000001',
    'Sabor do Pantanal 1 Litro - Melância',
    'Melância',
    '1 Litro',
    'PET',
    4.67
);

SELECT sabor FROM produtos WHERE codigo_do_produto = '4000001';

/* -------------------------------------------------------------------------------------------------------------- */

DROP PROCEDURE IF EXISTS acha_sabor_produto;

DELIMITER $$

CREATE PROCEDURE acha_sabor_produto(vProduto VARCHAR(50))
BEGIN
    DECLARE vSabor VARCHAR(50);
    SET vSabor = 'Melância';

    SELECT vSabor;
END$$

DELIMITER ;

/* -------------------------------------------------------------------------------------------------------------- */

CALL acha_sabor_produto('4000001');

/* -------------------------------------------------------------------------------------------------------------- */

DROP PROCEDURE IF EXISTS acha_sabor_produto;

DELIMITER $$

CREATE PROCEDURE acha_sabor_produto(vProduto VARCHAR(50))
BEGIN
    DECLARE vSabor VARCHAR(50);

    SELECT sabor INTO vSabor FROM produtos WHERE codigo_do_produto = vProduto;
    SELECT vSabor;
END$$

DELIMITER ;

/* Atividade de atribuição à variáveis usando SELECT */

DROP PROCEDURE IF EXISTS quantidade_notas;

DELIMITER $$

CREATE PROCEDURE quantidade_notas(data_das_notas DATE)
BEGIN
    DECLARE vQuantidadeNotas;

    SELECT COUNT(*) INTO vQuantidadeNotas FROM itens_notas
    WHERE data = data_das_notas;

    SELECT vQuantidadeNotas AS quantidade_notas;
END$$

DELIMITER ;