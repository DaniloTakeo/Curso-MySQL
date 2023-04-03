SELECT JSON_DEPTH('{}');

SELECT  JSON_DEPTH('{"nome": "João"}');

SELECT  JSON_DEPTH('{"nome": "João", "filho": {}}');

SELECT  JSON_DEPTH('{"nome": "João", "filho": {"nome": "Pedro"}}');

SELECT  JSON_DEPTH('{"nome": "João", "filho": {"nome": "Pedro", "neto": {"nome": "Julio"}}}');

SELECT doc FROM countryinfo;

SELECT JSON_DEPTH(doc) FROM countryinfo;

SELECT doc FROM countryinfo WHERE JSON_DEPTH(doc) <> 3;