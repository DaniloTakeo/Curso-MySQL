DROP PROCEDURE IF EXISTS teste_select_into;

DELIMITER $$

CREATE PROCEDURE teste_select_into()
BEGIN
    DECLARE vNome VARCHAR(50);

    SELECT nome INTO vNome FROM clientes;

    SELECT vNome;
END$$

DELIMITER ;

/* ---------------------------------------------------------------------------- */

CALL teste_select_into;