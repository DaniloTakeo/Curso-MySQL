CREATE TABLE tab_padrao(
    id INT AUTO_INCREMENT,
    descritor VARCHAR(50),
    endereco VARCHAR(100) NULL,
    cidade VARCHAR(50) DEFAULT 'Rio de Janeiro',
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),

    CONSTRAINT pk_id PRIMARY KEY(id)
);

INSERT INTO tab_padrao(descritor, endereco, cidade, data_criacao)
VALUES('Cliente X', 'Rua Projetada A', 'São Paulo', '2019-01-01');

SELECT * FROM tab_padrao;

INSERT INTO tab_padrao(descritor) VALUES('Cliente Y');