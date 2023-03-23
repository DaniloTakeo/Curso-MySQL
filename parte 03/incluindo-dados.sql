USE vendas_sucos;

INSERT INTO produtos(codigo, descritor, sabor, tamanho, embalagemm, preco_lista)
VALUES('1040107', 'Light - 350ml - Melância', 'Melância', '350ml', 'Lata', 4.56);

INSERT INTO produtos(codigo, descritor, sabor, tamanho, embalagemm, preco_lista)
VALUES('1040108', 'Light - 350ml - Graviola', 'Graviola', '350ml', 'Lata', 4);

/* Usar somente quando a ordem dos valores respeita a ordem das colunas da tabela */
INSERT INTO produtos
VALUES('1040109', 'Light - 350ml - Açaí', 'Açaí', '350ml', 'Lata', 5.60);

/* Múltiplas inserções */
INSERT INTO produtos
VALUES('1040110', 'Light - 350ml - Jaca', 'Jaca', '350ml', 'Lata', 6),
VALUES('1040111', 'Light - 350ml - Manga', 'Manga', '350ml', 'Lata', 3.50);

SELECT * FROM produtos;

/* Atividade de inserções */
INSERT INTO clientes
VALUES('1471156710', 'Érica Carvalho', 'R. Iriquita', 'Jardins', 'São Paulo', 'SP', '80012212', '1990-09-01', 27, 
    'F', 170000, 24500, 0),
VALUES('19290992743', 'Fernando Cavalcate', 'R. Dois de Fevereiro', 'Água Santa', 'Rio de Janeiro', 'RJ', '22000000',
    '2000-02-12', 18, 'M', 100000, 20000, 1),
VALUES('2600586709', 'César Teixeira', 'Rua Conde de Bonfim', 'Tijuca', 'Rio de Janeiro', 'RJ', '22020001',
    '2000-03-12', 18, 'M', 120000, 22000, 0);