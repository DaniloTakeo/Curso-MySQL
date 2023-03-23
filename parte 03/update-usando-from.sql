SELECT * FROM vendedores;

SELECT * FROM sucos_vendas.tabela_de_vendedores;

SELECT * FROM vendedores A 
INNER JOIN sucos_vendas.tabela_de_vendedores B
ON A.matricula = SUBSTRING(B.matricula, 3, 3);

UPDATE vendedores A 
INNER JOIN sucos_vendas.tabela_de_vendedores B
ON A.matricula = SUBSTRING(B.matricula, 3, 3)
SET A.ferias = B.de_ferias;

/* Atividade update com inner join */
SELECT A.cpf FROM clientes A
INNER JOIN vendedores B
ON A.bairro = B.bairro;

UPDATE clientes A
INNER JOIN vendedores B
ON A.bairro = B.bairro
SET A.volume_compra = (A.volume_compra * 1.3);