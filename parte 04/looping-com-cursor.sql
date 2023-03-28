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
    FETCH c INTO vNome;
    SELECT vNome;
    CLOSE c;
    
END$$

DELIMITER ;

/* ------------------------------------------------------------------------------- */

DROP PROCEDURE IF EXISTS cursor_looping;

DELIMITER $$

CREATE PROCEDURE cursor_looping()
BEGIN
    DECLARE vFimDoCursor INT DEFAULT 0;
    DECLARE vNome VARCHAR(50);
    DECLARE c CURSOR FOR SELECT nome FROM clientes LIMIT 4;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET vFimDoCursor = 1;

    OPEN c;
    WHILE vFimDoCursor = 0
    DO
        FETCH c INTO vNome;
        IF vFimDoCursor = 0 THEN SELECT vNomem;
    END WHILE;
    CLOSE c;
    
END$$

DELIMITER ;

/* ------------------------------------------------------------------------------- */

CALL cursor_looping;

/* Atividade cursor e looping */
DROP PROCEDURE IF EXISTS limite_creditos;

DELIMITER $$

CREATE PROCEDURE limite_creditos()
BEGIN
    DECLARE limiteCredito FLOAT;
    DECLARE limiteCreditoAcumulado FLOAT;
    DECLARE fimDoCursor INT;
    DECLARE c CURSOR FOR SELECT LIMITE_DE_CREDITO FROM clientes;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET fimDoCursor = 1;

    SET fimDoCursor = 0;
    SET limiteCreditoAcumulado = 0;
    SET limiteCredito = 0;
    
    OPEN c;
    WHILE fimDoCursor = 0
    DO
        FETCH c INTO limiteCredito;
        IF fimDoCursor = 0 THEN
            SET limiteCreditoAcumulado = limiteCreditoAcumulado + limiteCredito;
        END IF;
    END WHILE;
    SELECT limiteCreditoAcumulado;
    CLOSE c;
END$$

DELIMITER ;