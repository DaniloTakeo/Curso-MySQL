SELECT * FROM clientes;

SELECT data_nascimento FROM clientes WHERE cpf = '1471156710';

/* ----------------------------------------------------------------- */

DROP PROCEDURE IF EXISTS cliente_novo_velho;

DELIMITER $$

CREATE PROCEDURE cliente_novo_velho(vCpf VARCHAR(11))
BEGIN
    DECLARE vResultado VARCHAR(20);
    DECLARE vDataNascimento DATE;

    SELECT data_nascimento INTO vDataNascimento FROM clientes WHERE cpf = vCpf;

    IF vDataNascimento < '20000101' THEN
        SET vResultado = 'Cliente velho';
    ELSE
        SET vResultado = 'Cliente novo';
    END IF;

    SELECT vResultado;
END$$

DELIMITER ;

/* ----------------------------------------------------------------- */

CALL cliente_novo_velho('1471156710');
CALL cliente_novo_velho('19290992743');

/* Atividade IF THEN ELSE */

DROP PROCEDURE IF EXISTS testa_numero_notas;

DELIMITER $$

CREATE PROCEDURE testa_numero_notas(vData DATE)
BEGIN
    DECLARE vResultado VARCHAR(20);
    DECLARE vQuantidade INT;

    SELECT COUNT(*) INTO vQuantidade FROM notas_fiscais WHERE data = vData;

    IF vQuantidade > 70 THEN
        SET vResultado = 'Muita nota';
    ELSE
        SET vResultado = 'Pouca nota';
    END IF;

    SELECT vResultado;
END$$

DELIMITER ;