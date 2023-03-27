CREATE TABLE tab_looping(
    id INT;
);

/* ------------------------------------------------------------------------ */

DROP PROCEDURE IF EXISTS looping_while;

DELIMITER $$

CREATE PROCEDURE looping_while(vNumeroInicial INT, vNumeroFinal INT)
BEGIN
    DECLARE vContador INT;
    DELETE FROM tab_looping;

    SET vContador = vNumeroInicial;

    WHILE vContador <= vNumeroFinal
    DO
        INSERT INTO tab_looping(id) VALUES(vContador);
        SET vContador = vContador + 1;
    END WHILE;

    SELECT * FROM tab_looping;

END$$

DELIMITER ;

/* ------------------------------------------------------------------------ */

CALL looping_while(1, 10);

/* Atividade Looping While */

DROP PROCEDURE IF EXISTS soma_dias_notas;

DELIMITER $$

CREATE PROCEDURE soma_dias_notas()
BEGIN
    DECLARE dataInicial DATE;
    DECLARE dataFinal DATE;
    DECLARE numeroDeNotas INT;

    SET dataInicial = '20170101';
    SET dataFinal = '20170110';

    WHILE dataInicial <= dataFinal
        DO
        SELECT COUNT(*) INTO numeroDeNotas  FROM notas_fiscais WHERE data_venda = dataInicial;
        SELECT CONCAT(DATE_FORMAT(dataInicial, '%d/%m/%Y'), '-' , CAST(numeroDeNotas as CHAR(50)));
        SELECT ADDDATE(dataInicial, INTERVAL 1 DAY) INTO dataInicial;
    END WHILE;
END$$

DELIMITER ;