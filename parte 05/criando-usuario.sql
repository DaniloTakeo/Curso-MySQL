-- Usuário administrador
CREATE USER 'admin02'@'localhost' IDENTIFIED BY 'admin02'; 
GRANT ALL PRIVILEGES ON *.* TO 'admin02'@'localhost' WITH GRANT OPTION;

DROP USER 'root'@'localhost';

-- Usuário comum
CREATE USER 'user02'@'localhost' IDENTIFIED BY 'user02';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE TEMPORARY TABLES,
LOCK TABLES, EXECUTE  ON *.* TO 'user02'@'localhost';

-- Usuário somente leitura
CREATE USER 'read02'@'localhost' IDENTIFIED BY 'read01';
GRANT SELECT, EXECUTE ON *.* TO 'read01'@'localhost';

-- Usuário para backups
CREATE USER 'backup02'@'localhost' IDENTIFIED BY 'backup02';
GRANT SELECT, RELOAD, LOCK TABLES, REPLICATION CLIENT ON *.* TO 'backup02'@'localhost';

-- Acesso de diferentes hosts
CREATE USER 'admingeneric01'@'%' IDENTIFIED BY 'admin01'; 
GRANT ALL PRIVILEGES ON *.* TO 'admin02'@'%' WITH GRANT OPTION;
