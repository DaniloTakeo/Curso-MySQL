-- JSON MERGE PATCH
-- A propriedade que existir no primeiro e não existir no segundo vai ser incluida.
-- A propriedade que existir no segundo e não exisitir no primeiro também será incluída. 
-- Propriedade do segundo tem maior valência sobre a propriedade do primeiro em caso de ambos possuir.

SELECT JSON_MERGE_PATCH('{"nome": "James", "sobrenome": "Bond"}',
    '{"salario": 10000, "cidade": "Rio de Janeiro"}');

SELECT JSON_MERGE_PATCH('{"nome": "James", "sobrenome": "Bond"}',
    '{"nome": "Maxwell", "cidade": "Rio de Janeiro"}');

SELECT JSON_MERGE_PATCH('{"nome": "James", "sobrenome": "Bond"}',
    '{"nome": "Maxwell", "cidade": "Rio de Janeiro"}'),
    JSON_MERGE_PRESERVE('{"nome": "James", "sobrenome": "Bond"}',
    '{"nome": "Maxwell", "cidade": "Rio de Janeiro"}');

SELECT JSON_MERGE_PATCH('{"nome": "James", "sobrenome": "Bond"}',
    '{"nome": "Maxwell", "cidade": "Rio de Janeiro"}'),
    JSON_MERGE_PRESERVE('{"nome": "James", "sobrenome": "Bond"}',
    '{"nome": "Maxwell", "cidade": "Rio de Janeiro"}');

SELECT JSON_MERGE_PATCH('[1, 2]', '[true, false]');

SELECT JSON_MERGE_PATCH('{"array1": [1, 2]}', '{"array2": [true, false]}');
SELECT JSON_MERGE_PATCH('{"array2": [1, 2]}', '{"array2": [true, false]}');

