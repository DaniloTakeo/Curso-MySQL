DROP PROCEDURE IF EXISTS cursor_primeiro_contato;

DELIMITER $$

CREATE PROCEDURE cursor_primeiro_contato()
BEGIN
    DECLARE vNome VARCHAR(50);
    DECLARE c CURSOR FOR SELECT nome FROM clientes LIMIT 4;

    OPEN c;
    FETCH c INTO vNome;
    SELECT vNome;
    FETCH c INTO vNome;
    SELECT vNome;
    FETCH c INTO vNome;
    SELECT vNome;
    FETCH c INTO vNome;
    SELECT vNome;
    CLOSE c;
END$$

DELIMITER ;

/* -------------------------------------------------------------------------- */

CALL cursor_primeiro_contato;

