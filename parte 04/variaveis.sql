/*
    - Como declarar uma variável:
    DECLARE variable_name DATATYPE DEFAULT value;

    - DATATYPE é obrigatório

    - DEFAULT é opcional

    - Nome deve ter apenas letras, números, $ e _

    - Deve ser único dentro do escopo da Stored Procedure

    - É case sensitive

    - Tamanho máximo de 255 caracteres

    - Se não houver DEFAULT, o DEFAULT será automaticamente NULL

    - A declaração deve terminar com ; (ponto e vírgula)

    - TIPOS:
        - VARCHAR(n);
        - INTEGER;
        - DECIMAL(p, s);
        - DATE;
        - TIMESTAMP
*/

DROP PROCEDURE IF NOT EXISTS exibir_variavel;

DELIMITER $$

CREATE PROCEDURE exibir_variavel()
BEGIN
    DECLARE texto CHAR(20) DEFAULT 'Hello World.';

    SELECT texto AS resultado;
END$$

DELIMITER ;

/* ---------------------------------------------------------------- */

CALL exibir_variavel;

/* ---------------------------------------------------------------- */

DROP PROCEDURE IF NOT EXISTS tipos_de_dados;

DELIMITER $$

CREATE PROCEDURE tipos_de_dados()
BEGIN
    DECLARE v VARCHAR(5) DEFAULT 'texto';
    DECLARE i INTEGER DEFAULT 0;
    DECLARE d DECIMAL(4, 2) DEFAULT 56.12;
    DECLARE dt DATE DEFAULT '2019-03-01';

    SELECT v;
    SELECT i;
    SELECT d;
    SELECT dt;
END$$

DELIMITER ;

/* ---------------------------------------------------------------- */

CALL tipos_de_dados;

/* ---------------------------------------------------------------- */

DROP PROCEDURE IF NOT EXISTS data_hora_local;

DELIMITER $$

CREATE PROCEDURE data_hora_local()
BEGIN
    DECLARE ts DATETIME DEFAULT CURRENT_TIMESTAMP();

    SELECT ts AS resultado;
END$$

DELIMITER ;

/* ---------------------------------------------------------------- */

CALL data_hora_local;

/* ---------------------------------------------------------------- */

DROP PROCEDURE IF NOT EXISTS sem_declaracao;

DELIMITER $$

CREATE PROCEDURE sem_declaracao()
BEGIN
    SELECT texto;
END$$

DELIMITER ;

/* ---------------------------------------------------------------- */

CALL sem_declaracao;

/* ---------------------------------------------------------------- */

DROP PROCEDURE IF NOT EXISTS mesmo_tipo_dados;

DELIMITER $$

CREATE PROCEDURE mesmo_tipo_dados()
BEGIN
    DECLARE data1, data2 DATE DEFAULT '2014-09-13'; --DEFAULT funcionará para ambos
    SELECT data1, data2;
END$$

DELIMITER ;

/* ---------------------------------------------------------------- */

CALL mesmo_tipo_dados;

/* ---------------------------------------------------------------- */

DROP PROCEDURE IF NOT EXISTS atribui_valor;

DELIMITER $$

CREATE PROCEDURE atribui_valor()
BEGIN
    DECLARE texto VARCHAR(30) DEFAULT 'Texto inicial';
    SELECT texto;
    SET texto = 'Texto modificado';
    SELECT texto;
END$$

DELIMITER ;

/* ---------------------------------------------------------------- */

CALL atribui_valor;

/* Atividade variáveis */

DROP PROCEDURE IF NOT EXISTS exec1;

DELIMITER $$

CREATE PROCEDURE exec1()
BEGIN
    DECLARE Cliente VARCHAR(10);
    DECLARE Idade INT;
    DECLARE DataNascimento DATE;
    DECLARE Custo FLOAT;

    SET Cliente = 'João';
    SET Idade = 10;
    SET DataNascimento = '20170110';
    SET Custo = 10.23;

    SELECT Cliente;
    SELECT Idade;
    SELECT DataNascimento;
    SELECT Custo;
END$$

DELIMITER ;