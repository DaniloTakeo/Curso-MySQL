DROP PROCEDURE IF EXISTS p_inserir_venda;

DELIMITER $$

CREATE PROCEDURE p_inserir_venda(vData DATE, maxItens INT, maxQuantidade INT)
BEGIN
    DECLARE vCliente VARCHAR(11);
    DECLARE vProduto VARCHAR(10);
    DECLARE vVendedor VARCHAR(5);
    DECLARE vQuantidade INT;
    DECLARE vPreco FLOAT;
    DECLARE vItens INT;
    DECLARE vNumeroNota INT;
    DECLARE vContador INT DEFAULT 1;

    SELECT MAX(numero) + 1 INTO vNumeroNota FROM notas_fiscais;
    SET vCliente = f_cliente_aleatorio();
    SET vVendedor = f_vendedor_aleatorio();

    INSERT INTO notas_fiscais(cpf, matricula, data_venda, numero, imposto)
    VALUES(vCliente, vVendedor, vData, vNumeroNota, 0.18);

    SET vItens = f_numero_aleatorio(1, maxItens);

    WHILE vContador <= vItens
    DO
        SET vProduto = f_produto_aleatorio();
        SET vQuantidade = f_numero_aleatorio(10, maxQuantidade);
        SELECT preco_de_lista INTO vPreco FROM produtos WHERE codigo_do_produto = vProduto;

        INSERT INTO itens_notas_fiscais(numero, codigo_do_produto, quantidade, preco)
        VALUES(vNumeroNota, vProduto, vQuantidade, vPreco);

        SET vContador = vContador + 1;
    END WHILE;

END$$

DELIMITER ;

/* ----------------------------------------------------------------------------------------- */

CALL p_inserir_venda('2023-03-28', 3, 100);