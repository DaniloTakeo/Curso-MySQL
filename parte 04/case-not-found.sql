DROP PROCEDURE IF EXISTS acha_tipo_sabor_erro;

DELIMITER $$

CREATE PROCEDURE acha_tipo_sabor_erro(vProduto VARCHAR(50))
BEGIN
    DECLARE vSabor VARCHAR(50);
    DECLARE msgErro VARCHAR(30);
    DECLARE CONTINUE HANDLER FOR 1339 SET msgErro = 'O case não está completo';

    SELECT sabor INTO vSabor FROM produtos WHERE codigo_do_produto = vProduto;

    CASE
        WHEN 'Lima/Limão' THEN SELECT 'Cítrico';
        WHEN 'Laranja' THEN SELECT 'Cítrico';
        WHEN 'Morango/Limão' THEN SELECT 'Cítrico';
        WHEN 'Uva' THEN SELECT 'Neutro';
        WHEN 'Morango' THEN SELECT 'Neutro';
    END CASE;

    SELECT msgErro;

END$$

DELIMITER ;

/* ------------------------------------------------------------- */

CALL acha_tipo_sabor_erro('1004327');