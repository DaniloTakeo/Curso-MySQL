CREATE TABLE default_table(
    id INT,
    nome VARCHAR(100)
);

ALTER TABLE default_table ENGINE = MyISAM;

CREATE TABLE default_table2(
    id INT,
    nome VARCHAR(100)
) ENGINE = MEMORY;