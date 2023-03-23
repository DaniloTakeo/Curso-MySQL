CREATE TABLE tab_identity(
    id INT AUTO_INCREMENT,
    descritor VARCHAR(20),

    CONSTRAINT pk_id PRIMARY KEY(id)
);

INSERT INTO tab_identity(descritor) VALUES('cliente1');
INSERT INTO tab_identity(descritor) VALUES('cliente2');
INSERT INTO tab_identity(id, descritor) VALUES(NULL, 'cliente3');
INSERT INTO tab_identity(id, descritor) VALUES(NULL, 'cliente4');

DELETE FROM tab_identity WHERE id = 2;

INSERT INTO tab_identity(id, descritor) VALUES(NULL, 'cliente5');

DELETE FROM tab_identity WHERE id = 5;

INSERT INTO tab_identity(id, descritor) VALUES(NULL, 'cliente6');
INSERT INTO tab_identity(id, descritor) VALUES(100, 'cliente7');
INSERT INTO tab_identity(id, descritor) VALUES(NULL, 'cliente8');
