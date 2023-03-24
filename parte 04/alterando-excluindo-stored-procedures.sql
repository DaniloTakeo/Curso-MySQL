USE sucos_vendas;

DROP PROCEDURE IF EXISTS hello_world2;

DELIMITER $$

CREATE PROCEDURE hello_world2()
BEGIN
    SELECT 'Hello World!' AS resultado;
END$$

DEMILITER ;

/* -------------------------------------------------------------------- */
/* Alterar a procedure consiste em dropar e criar de novo */

USE sucos_vendas;

DROP PROCEDURE IF EXISTS hello_world2;

DELIMITER $$

CREATE PROCEDURE hello_world2()
BEGIN
    SELECT 'Hello World! How you doing?' AS resultado;
END$$

DEMILITER ;

/* -------------------------------------------------------------------- */

CALL hello_world2;

/* -------------------------------------------------------------------- */

USE sucos_vendas;

DROP PROCEDURE IF EXISTS hello_world3;

DELIMITER $$

CREATE PROCEDURE hello_world3()
BEGIN
    SELECT 'Hello World! How you doing?' AS resultado;
END$$

DEMILITER ;

/* -------------------------------------------------------------------- */
/* Comando parar dropar a procedure */

DROP PROCEDURE IF EXISTS hello_world2;