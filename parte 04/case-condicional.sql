DROP PROCEDURE IF EXISTS acha_status_preco_case;

DELIMITER $$

CREATE PROCEDURE acha_status_preco_case(vProduto VARCHAR(50))
BEGIN
    DECLARE vPreco FLOAT;
    DECLARE vMensagem VARCHAR(50);

    SELECT preco_lista INTO vPreco FROM produtos WHERE codigo_do_produto = vProduto;

    CASE
        WHEN vPreco >= 12 THEN
            SET vMensagem = 'Produto caro';
        WHEN vPreco >= 7 AND vPreco < 12 THEN
            SET vMensagem = 'Produto em conta';
        ELSE
            SET vMensagem = 'Produto barato';
    END CASE;

    SELECT vMensagem;
END$$

DELIMITER ;

/* -------------------------------------------------------------------- */

CALL acha_status_preco_case('1000889');
CALL acha_status_preco_case('1004327');

/* Atividade CASE */

DROP PROCEDURE IF EXISTS comparativo_vendas_case;

DELIMITER $$

CREATE PROCEDURE comparativo_vendas_case(dataInicial DATE, dataFinal DATE)
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

    CASE
        WHEN variacao > 10 THEN
            SELECT 'Verde';
        WHEN variacao >= -10 AND variacao <= 10 THEN
            SELECT 'Amarelo';
        ELSE
            SELECT 'Vermelho';
    END CASE;

END$$

DELIMITER ;