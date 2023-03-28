SET GLOBAL log_bin_trust_function_creators = 1;

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

/* ------------------------------------------------------------------------------ */

DELIMITER $$

CREATE FUNCTION f_acha_tipo_sabor(vSabor VARCHAR(50))
RETURNS VARCHAR(20)
BEGIN
    DECLARE vRetorno VARCHAR(20) DEFAULT '';

    CASE vSabor
        WHEN 'Lima/Limão' THEN SET vSabor = 'Cítrico';
        WHEN 'Laranja' THEN SET vSabor = 'Cítrico';
        WHEN 'Morango/Limão' THEN SET vSabor = 'Cítrico';
        WHEN 'Uva' THEN SET vSabor = 'Neutro';
        WHEN 'Morango' THEN SET vSabor = 'Neutro';
        ELSE SET vSabor = 'Ácidos';
    END CASE;

    RETURN vRetorno;
END$$

DELIMITER ;

/* ------------------------------------------------------------------------------ */

CALL f_acha_tipo_sabor('Laranja'); -- ERRO, CALL é somente para PROCEDURES
SELECT f_acha_tipo_sabor('Laranja');

SELECT nome_do_produto, sabor, f_acha_tipo_sabor(sabor) AS tipo_sabor FROM produtos;

SELECT nome_do_produto, sabor, f_acha_tipo_sabor(sabor) AS tipo_sabor 
FROM produtos
WHERE f_acha_tipo_sabor(sabor) = 'Neutro';


/* Atividade Funções */
CREATE FUNCTION numero_notas (DATA DATE)
RETURNS INTEGER
BEGIN
    DECLARE numeroNotas INT;
    SELECT COUNT(*) INTO numeroNotas FROM notas_fiscais WHERE data_venda = DATA;
    RETURN numeroNotas;
END