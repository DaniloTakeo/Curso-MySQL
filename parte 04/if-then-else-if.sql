SELECT * FROM produtos;

SELECT preco_lista FROM produtos WHERE codigo_do_produto = '1000889';

/* ------------------------------------------------------------- */

DROP PROCEDURE IF EXISTS acha_status_preco;

DELIMITER $$

CREATE PROCEDURE acha_status_preco(vProduto VARCHAR(50))
BEGIN
    DECLARE vPreco FLOAT;
    DECLARE vMensagem VARCHAR(50);

    SELECT preco_lista INTO vPreco FROM produtos WHERE codigo_do_produto = vProduto;

    IF vPreco >= 12 THEN
        SET vMensagem = 'Produto caro';
    ELSE IF vPreco >= 7 AND vPreco < 12 THEN
        SET vMensagem = 'Produto em conta';
    ELSE
        SET vMensagem = 'Produto barato';
    END IF;

    SELECT vMensagem;
END$$

DELIMITER ;

/* ------------------------------------------------------------- */

CALL acha_status_preco('1000889');
CALL acha_status_preco('1086543');
CALL acha_status_preco('326779');

/* Atividade if then else if */

DROP PROCEDURE IF EXISTS comparativo_vendas;

DELIMITER $$

CREATE PROCEDURE comparativo_vendas(dataInicial DATE, dataFinal DATE)
BEGIN
    DECLARE faturamentoInicial FLOAT;
    DECLARE faturamentoFinal FLOAT;
    DECLARE variacao FLOAT;

    SELECT SUM(B.QUANTIDADE * B.PRECO) INTO faturamentoInicial 
    FROM NOTAS_FISCAIS A INNER JOIN ITENS_NOTAS_FISCAIS B
    ON A.NUMERO = B.NUMERO
    WHERE A.DATA_VENDA = dataInicial;

    SELECT SUM(B.QUANTIDADE * B.PRECO) INTO faturamentoFinal 
    FROM NOTAS_FISCAIS A INNER JOIN ITENS_NOTAS_FISCAIS B
    ON A.NUMERO = B.NUMERO
    WHERE A.DATA_VENDA = dataFinal;

    SET variacao = ((faturamentoFinal / faturamentoInicial) -1) * 100;

    IF variacao > 10 THEN
        SELECT 'Verde';
    ELSE IF variacao >= -10 AND variacao <= 10 THEN
        SELECT 'Amarelo';
    ELSE
        SELECT 'Vermelho';
    END IF;   
END$$

DELIMITER ;