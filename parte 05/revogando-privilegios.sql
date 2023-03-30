SELECT * FROM mysql.user;

SHOW GRANTS FOR 'user02'@'localhost';

REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'user02'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE, CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE
ON *.* TO 'user02'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON sucos_vendas.* TO 'user02'@'localhost';