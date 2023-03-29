SELECT * FROM notas_fiscais WHERE data_venda = '2017-01-01';

ALTER TABLE notas_fiscais ADD INDEX data_venda;

SELECT * FROM notas_fiscais2 WHERE data_venda = '2017-01-01'; --Tabela sem PK e FK

mysqlslap -uroot -p --concurrency=100 --iterations=10 --create-schema=sucos_vendas
--query="SELECT * FROM notas_fiscais WHERE data_venda = '2017-01-01'";

mysqlslap -uroot -p --concurrency=100 --iterations=10 --create-schema=sucos_vendas
--query="SELECT * FROM notas_fiscais2s WHERE data_venda = '2017-01-01'";