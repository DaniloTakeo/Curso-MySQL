USE vendas_sucos;

CREATE TABLE produtos(
    codigo VARCHAR(10) NOT NULL,
    descritor VARCHAR(100),
    sabor VARCHAR(50),
    tamanho VARCHAR(50),
    embalagem VARCHAR(50),
    preco_lista FLOAT,

    CONSTRAINT pk_codigo PRIMARY KEY(codigo)
);

CREATE TABLE vendedores(
    matricula VARCHAR(5) NOT NULL,
    nome VARCHAR(100),
    bairro VARCHAR(50),
    comissao FLOAT,
    data_admissao DATE,
    ferias BIT(1),

    CONSTRAINT pk_matricula PRIMARY KEY(matricula)
);

ALTER TABLE vendedores RENAME COLUMN data_admissao TO data_da_admissao;

CREATE TABLE clientes(
    cpf VARCHAR(11) NOT NULL,
    nome VARCHAR(100),
    endereco VARCHAR(150),
    bairro VARCHAR(50),
    cidade VARCHAR(50),
    estado VARCHAR(50),
    cep VARCHAR(8),
    data_nascimento DATE,
    idade INT,
    sexo VARCHAR(1),
    limite_credito FLOAT,
    volume_compra FLOAT,
    primeira_compra BIT(1),

    CONSTRAINT pk_cpf PRIMARY KEY(cpf)
);

/* Atividade criação de tabelas */
CREATE TABLE vendas(
    numero VARCHAR(5) NOT NULL,
    data DATE,
    cpf VARCHAR(11) NOT NULL,
    matricula VARCHAR(5) NOT NULL,
    imposto FLOAT,

    CONSTRAINT pk_numero PRIMARY KEY(numero),
    CONSTRAINT fk_cpf FOREIGN KEY(cpf) REFERENCES clientes(cpf),
    CONSTRAINT fk_matricula FOREIGN KEY(matricula) REFERENCES vendedor(matricula)
);

CREATE TABLE itens_notas(
    numero VARCHAR(5) NOT NULL,
    codigo VARCHAR(10) NOT NULL,
    quantidade INT(11),
    preco FLOAT,

    CONSTRAINT pk_numero PRIMARY KEY(numero, codigo),
    CONSTRAINT fk_numero FOREIGN KEY(numero) REFERENCES notas(numero),
    CONSTRAINT fk_codigo FOREIGN KEY(codigo) REFERENCES produtos(codigo)
);

/* Adição de constraint após a criação da tabela */
ALTER TABLE vendas ADD CONSTRAINT fk_cliente FOREIGN KEY(cpf) REFERENCES clientes(cpf);
ALTER TABLE vendas ADD CONSTRAINT fk_vendedores FOREIGN KEY(matricula) REFERENCES vendedores(matricula);