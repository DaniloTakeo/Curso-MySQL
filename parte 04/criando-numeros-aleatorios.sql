SELECT RAND();

SELECT FLOOR((RAND() * (300 + 15 + 1) + 15));

/* ------------------------------------------------------------------------------- */

DROP FUNCTION IF EXISTS f_numero_aleatorio;

DELIMITER $$

CREATE FUNCTION f_numero_aleatorio(minimo INT, maximo INT)
RETURNS INTEGER
BEGIN
    DECLARE vRetorno INT;

    SELECT FLOOR((RAND() * (maximo + minimo + 1) + minimo)) INTO vRetorno;

    RETURN vRetorno;
END$$

DELIMITER ;

/* ------------------------------------------------------------------------------- */

SELECT f_numero_aleatorio(5, 300);

/* Atividade números aleatorios */

CREATE TABLE tabela_aleatorios(
    numero INT
);

DROP PROCEDURE IF EXISTS tabela_numeros;

DELIMITER $$

CREATE PROCEDURE tabela_numeros()
BEGIN
    DECLARE vContador INT DEFAULT 0;

    DELETE FROM tabela_numeros;

    WHILE vContador < 100
    DO
        INSERT INTO tabela_aleatorios(numero) VALUES (f_numero_aleatorio(0, 1000));
        SET vContador = vContador + 1;
    END WHILE;

    SELECT * FROM tabela_numeros;
END$$

DELIMITER ;