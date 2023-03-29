mysqldump;

mysqldump -uroot -p --databases sucos_vendas > C:\mysqladmin\sucos_vendas_full.sql

mysqldump -uroot -p --databases sucos_vendas --tables notas_fiscais > C:\mysqladmin\sucos_vendas_tab_notas_fiscais.sql

mysqldump -uroot -p --databases sucos_vendas --ignore-table sucos_vendas.notas_fiscais > C:\mysqladmin\sucos_vendas_ignore_tab_notas_fiscais.sql

mysqldump -uroot -p --databases sucos_vendas --no-create-db --no-create-info --complete-insert > C:\mysqladmin\sucos_vendas_somente_inserts.sql

