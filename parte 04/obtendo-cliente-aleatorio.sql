DROP FUNCTION IF EXISTS f_cliente_aleatorio;

DELIMITER $$

CREATE FUNCTION f_cliente_aleatorio()
RETURNS VARCHAR(11)
BEGIN
    DECLARE vRetorno VARCHAR(11);
    DECLARE vNumeroMaximoTabela INT;
    DECLARE vNumeroAleatorio INT;
    
    SELECT COUNT(*) INTO vNumeroMaximoTabela FROM clientes;
    SET vNumeroAleatorio = f_numero_aleatorio(1, vNumeroMaximoTabela) - 1;

    SELECT cpf INTO vRetorno FROM clientes LIMIT vNumeroAleatorio, 1;

    RETURN vRetorno;
END$$

DELIMITER ;

/* Atividade registros aleatórios */

DROP FUNCTION IF EXISTS f_produto_aleatorio;

DELIMITER $$

CREATE FUNCTION f_produto_aleatorio()
RETURN VARCHAR(10)
BEGIN
    DECLARE vRetorno VARCHAR(10);
    DECLARE vNumeroMaximoTabela INT;
    DECLARE vNumeroAleatorio INT;

    SELECT COUNT(*) INTO vNumeroMaximoTabela FROM produtos;
    SET vNumeroAleatorio = f_numero_aleatorio(1, vNumeroMaximoTabela) - 1;

    SELECT codigo INTO vRetorno FROM produtos LIMIT vNumeroAleatorio, 1;

    RETURN vRetorno;
END$$

DELIMITER ;

DROP FUNCTION IF EXISTS f_vendedor_aleatorio;

DELIMITER $$

CREATE FUNCTION f_vendedor_aleatorio()
RETURN VARCHAR(5)
BEGIN
    DECLARE vRetorno VARCHAR(5);
    DECLARE vNumeroMaximoTabela INT;
    DECLARE vNumeroAleatorio INT;

    SELECT COUNT(*) INTO vNumeroMaximoTabela FROM vendedores;
    SET vNumeroAleatorio = f_numero_aleatorio(1, vNumeroMaximoTabela) - 1;

    SELECT matricula INTO vRetorno FROM vendedores LIMIT vNumeroAleatorio, 1;

    RETURN vRetorno;
END$$

DELIMITER ;