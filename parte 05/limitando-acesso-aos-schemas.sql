-- Usuário comum
CREATE USER 'user04'@'%' IDENTIFIED BY 'user04';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE TEMPORARY TABLES,
LOCK TABLES, EXECUTE ON sucos_vendas.* TO 'user03'@'%';

CREATE USER 'user04'@'%' IDENTIFIED BY 'user04';
GRANT SELECT, INSERT, UPDATE, DELETE ON sucos_vendas.clientes TO 'user04'@'%';

GRANT SELECT ON sucos_vendas.produtos TO 'user04'@'%';

/* Atividade de limitação de acesso */
GRANT SELECT, INSERT, UPDATE, DELETE ON bancodb.tabela1 TO 'user'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON bancodb.tabela2 TO 'user'@'%';
GRANT SELECT ON bancodb.tabela3 TO 'user'@'%';