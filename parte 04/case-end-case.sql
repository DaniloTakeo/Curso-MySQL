SELECT DISTINCT sabor FROM produtos;

SELECT sabor FROM produtos WHERE codigo_do_produto = '1000889';

/* ----------------------------------------------------------------------- */

DROP PROCEDURE IF EXISTS acha_tipo_sabor;

DELIMITER $$

CREATE PROCEDURE acha_tipo_sabor(vProduto VARCHAR(50))
BEGIN
    DECLARE vSabor VARCHAR(50);
    
    SELECT sabor INTO vSabor FROM produtos WHERE codigo_do_produto = vProduto;

    CASE vSabor
        WHEN 'Lima/Limão' THEN SELECT 'Cítrico';
        WHEN 'Laranja' THEN SELECT 'Cítrico';
        WHEN 'Morango/Limão' THEN SELECT 'Cítrico';
        WHEN 'Uva' THEN SELECT 'Neutro';
        WHEN 'Morango' THEN SELECT 'Neutro';
        ELSE SELECT 'Ácidos';
    END CASE;
END$$

DELIMITER ;

/* ----------------------------------------------------------------------- */

CALL acha_tipo_sabor('1000889');