SELECT * FROM produtos;

UPDATE produtos SET preco_lista = 5 WHERE codigo = '1000889';

UPDATE produtos SET 
    embalagem = 'PET',
    tamanho = '1 Litro',
    descritor = 'Sabor da Montanha - 1 Litro - Uva'
WHERE codigo = '1000889';

SELECT * FROM produtos WHERE sabor = 'Maracujá';

UPDATE produtos SET preco_lista = (preco_lista * 0.1) WHERE sabor = 'Maracujá';

/* Atividade de alteração de dados */
UPDATE clientes SET 
    endereco = 'R. Jorge Emílio 23',
    bairro = 'Santo Amaro',
    cidade = 'São Paulo',
    estado = 'SP',
    cep =  '8833223'
WHERE cpf = '19290992743';