EXPLAIN SELECT A.nome_do_produto FROM produtos A

EXPLAIN SELECT A.nome_do_produto FROM produtos A \G

EXPLAIN FORMAT=JSON SELECT A.nome_do_produto FROM produtos A \G

EXPLAIN FORMAT=JSON SELECT A.nome_do_produto, C.quauntidade 
    FROM produtos A
    INNER JOIN itens_notas_fiscais C
    ON A.codigo_do_produto = C.codigo_do_produto \G

EXPLAIN FORMAT=JSON SELECT A.nome_do_produto, YEAR(B.data_venda) AS ANO, C.quauntidade 
    FROM produtos A
    INNER JOIN itens_notas_fiscais C
    ON A.codigo_do_produto = C.codigo_do_produto
    INNER JOIN notas_fiscais B
    ON B.numero = C.numero \G

EXPLAIN FORMAT=JSON SELECT A.nome_do_produto, YEAR(B.data_venda) AS ANO, SUM(C.quauntidade) 
    FROM produtos A
    INNER JOIN itens_notas_fiscais C
    ON A.codigo_do_produto = C.codigo_do_produto
    INNER JOIN notas_fiscais B
    ON B.numero = C.numero
    GROUP BY A.nome_do_produto, YEAR(B.data_venda)
    ORDER BY A.nome_do_produto, YEAR(B.data_venda) \G