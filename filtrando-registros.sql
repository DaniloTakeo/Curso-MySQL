SELECT * FROM tbProdutos WHERE PRODUTO = '544931';

SELECT * FROM tbCliente WHERE CIDADE = 'Rio de Janeiro';

SELECT * FROM tbProdutos WHERE SABOR = 'Limão';

UPDATE tbProdutos SET SABOR = 'Citrícus' WHERE SABOR = 'Limão';

/* Atividade de filtro */
SELECT * FROM tabela_de_vendedores WHERE NOME = 'Cláudia de Morais';

SELECT * FROM tbCliente WHERE IDADE = 22;

SELECT * FROM tbCliente WHERE IDADE > 22;

SELECT * FROM tbCliente WHERE IDADE < 22;

SELECT * FROM tbCliente WHERE IDADE <= 22;

SELECT * FROM tbCliente WHERE IDADE <> 22;

SELECT * FROM tbCliente WHERE NOME > 'Fernando Cavalcante';

SELECT * FROM tbCliente WHERE NOME >= 'Fernando Cavalcante';

SELECT * FROM tbCliente WHERE NOME <> 'Fernando Cavalcante';

SELECT * FROM tbProdutos;

/* Problema do tipo Float no MySQL */
SELECT * FROM tbProdutos WHERE PRECO_LISTA = 16.008;

/* Workaround */
SELECT * FROM tbProdutos WHERE PRECO_LISTA BETWEEN 16.007 AND 16.009;

/* Atividade filtro por comissão */
SELECT * FROM tabela_de_vendedores WHERE PERCENTUAL_COMISSAO > 0.1;