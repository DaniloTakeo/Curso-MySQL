SELECT * FROM produtos WHERE SUBSTRING(descritor, 1, 15) = 'Sabor dos Alpes';

DELETE FROM produtos WHERE codigo = '1001000';

DELETE FROM produtos WHERE tamanho = '1 Litro' AND SUBSTRING(descritor, 1, 15) = 'Sabor dos Alpes';

SELECT codigo_do_produto FROM sucos_vendas.tabela_de_produtos;

SELECT codigo 
FROM produtos
WHERE codigo NOT IN 
    (SELECT codigo_do_produto FROM sucos_vendas.tabela_de_produtos);

DELETE FROM produtos
WHERE codigo NOT IN
    (SELECT codigo_do_produto FROM sucos_vendas.tabela_de_produtos);

/* Atividade de exclusão de registros */
SELECT A.numero FROM notas A
INNER JOIN clientes B ON A.cpf = B.cpf
WHERE B.idade <= 18

DELETE FROM notas
WHERE cpf NOT IN
    (SELECT cpf FROM clientes WHERE idade > 18);

DELETE A FROM notas A
INNER JOIN clientes B ON A.cpf = B.cpf
WHERE B.idade <= 18