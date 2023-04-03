
SELECT JSON_LENGTH('{}');

SELECT JSON_LENGTH('{"nome": "João"}');

SELECT JSON_LENGTH('{"nome": "João", "sobrenome": "Machado"}');

SELECT JSON_LENGTH('{"nome": "João", "sobrenome": "Machado", "hobby": ["praia"]}');

SELECT JSON_LENGTH('{"nome": "João", "sobrenome": "Machado", "hobby": ["praia", "vôlei"]}');

SELECT JSON_LENGTH('{"nome": "João", "sobrenome": "Machado", "hobby": ["praia", "vôlei"], "filho": {"nome": "Carlos"}}');

SELECT JSON_LENGTH('["praia", "vôlei", "futebol"]');

SELECT doc FROM countryinfo;

SELECT JSON_LENGTH(doc) FROM countryinfo;

SELECT doc FROM countryinfo WHERE JSON_LENGTH(doc) <> 8;