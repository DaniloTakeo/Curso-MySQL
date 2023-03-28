DROP PROCEDURE IF EXISTS looping_cursor_multiplas_colunas;

DELIMITER $$

CREATE PROCEDURE looping_cursor_multiplas_colunas()
BEGIN
    DECLARE fimDoCursor INT DEFAULT 0;
    DECLARE vCidade,
        vEstado,
        vCep VARCHAR(50);
    DECLARE vNome,
        vEndereco VARCHAR(150);
    DECLARE c CURSOR FOR 
        SELECT nome, endereco_1, cidade, estado, cep FROM clientes;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET fimDoCursor = 1;
    
    OPEN c;
    WHILE fimDoCursor = 0
    DO
        FETCH c INTO vNome, vEndereco, vCidade, vEstado, vCep;
        IF fimDoCursor = 0 THEN
            SELECT CONCAT(vNome, 'Endereço: ', vEndereco, ',', vCidade, ' - ', vEstado, 'CEP: ', vCep) AS RESULTADO;
        END IF;
    END WHILE;
    CLOSE c;
END$$

DELIMITER ;

/* ------------------------------------------------------------------------------------------- */

CALL looping_cursor_multiplas_colunas;

/* Atividade Cursor múltiplas colunas */

DROP PROCEDURE IF EXISTS mais_um_campo;

DELIMITER $$

CREATE PROCEDURE mais_um_campo()
BEGIN
    DECLARE quantidade INT;
    DECLARE preco FLOAT;
    DECLARE faturamentoAcumulado FLOAT;
    DECLARE fimDoCursor INT;
    DECLARE c CURSOR FOR
        SELECT INF.quantidade, INF.preco FROM ITENS_NOTAS_FISCAIS INF
        INNER JOIN NOTAS_FISCAIS  NF ON NF.NUMERO = INF.NUMERO
        WHERE MONTH(NF.DATA_VENDA) = 1 AND YEAR(NF.DATA_VENDA) = 2017;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET fimDoCursor = 1;
    
    OPEN c;
        SET fimDoCursor = 0;
        SET faturamentoAcumulado = 0;
        WHILE fimDoCursor = 0
        DO
            FETCH c INTO quantidade, preco;
            IF fimDoCursor = 0 THEN
                SET faturamentoAcumulado = faturamentoAcumulado + (quantidade * preco);
            END IF;
        END WHILE;
    CLOSE c;
    SELECT faturamentoAcumulado AS Resultado;
END$$

DELIMITER ;