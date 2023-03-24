USE sucos_vendas;

DROP PROCEDURE IF EXISTS hello_world;

DELIMITER $$

CREATE PROCEDURE hello_world()
BEGIN
    SELECT 'Hello World!' AS resultado;
END$$

DEMILITER ;

/* ------------------------------------------------------------ */

CALL hello_world;

/* ------------------------------------------------------------ */

DROP PROCEDURE IF EXISTS mostra_numemro;

DELIMITER $$

CREATE PROCEDURE mostra_numero()
BEGIN
    SELECT (1 + 9 - 5);
END$$

DELIMITER ;

/* -------------------------------------------------------------- */

CALL mostra_numemro;

/* --------------------------------------------------------------- */

DROP PROCEDURE IF EXISTS mostra_numero_alias;

DELIMITER $$

CREATE PROCEDURE mostra_numero_alias()
BEGIN
    SELECT (1 + 9 - 5) AS resultado;
END$$

DELIMITER ;

/* --------------------------------------------------------------- */

CALL mostra_numero_alias;

/* --------------------------------------------------------------- */

DROP PROCEDURE IF EXISTS sp_com_funcoes;

DELIMITER $$

CREATE PROCEDURE sp_com_funcoes()
BEGIN
    SELECT CONCAT('Hello world!', '...', (1 + 9 - 5)) AS itens_combinados;
END$$

DELIMITER ;

/* --------------------------------------------------------------- */

CALL sp_com_funcoes;

/* --------------------------------------------------------------- */

DROP PROCEDURE IF EXISTS sp_com_comentarios;

DELIMITER $$

CREATE PROCEDURE sp_com_comentarios()
/* Vamoms exibir itens combinados */
-- Comentário de linha única
BEGIN
    SELECT CONCAT('Hello world!', '...', (1 + 9 - 5)) AS itens_combinados;
END$$

DELIMITER ;

/* --------------------------------------------------------------- */

CALL sp_com_comentarios;