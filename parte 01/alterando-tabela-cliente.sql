ALTER TABLE tbCliente ADD PRIMARY KEY(CPF);

ALTER TABLE tbCliente ADD COLUMN (DATA_NASCIMENTO DATE);

INSERT INTO tbCliente(CPF, NOME, ENDERECO1, ENDERECO2, BAIRRO, CIDADE, ESTADO, CEP, IDADE, SEXO, LIMITE_CREDITO, VOLUME_COMPRA, 
    PRIMEIRA_COMPRA, DATA_NASCIMENTO)
VALUES('123.456.789-01', 'João da Silva', 'Rua projetada A número 10', '', 'Vila Romã', 'Caratinga', 'AMAZONAS', '22222-222',
    30, 'M', 10000.00, 2000, 0, '1993-02-12');