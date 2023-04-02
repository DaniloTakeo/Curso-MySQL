USE world_x;

-- JSON_MERGE (PRESERVE, PATCH)

SELECT JSON_MERGE_PRESERVE('[1, 2]', '[true, false]');
SELECT JSON_MERGE_PRESERVE('[1, 2]'. '[3, 4]');
SELECT JSON_MERGE_PRESERVE('[1, 2]'. '[2, 4]');

SELECT JSON_MERGE_PRESERVE('{"nome": "James", "sobrenome": "Bond"}', '{"nome": "Maxwell", "sobrenome": "Smart"}');
SELECT JSON_MERGE_PRESERVE('{"nome": "James", "sobrenome": "Bond"}',
    '{"nome": "Maxwell", "sobrenome": "Smart", "salario": 10000}');

SELECT JSON_MERGE_PRESERVE('{"nome": "James", "sobrenome": "Bond", "id": "007"}',
    '{"nome": "Maxwell", "sobrenome": "Smart", "salario": 10000}');

SELECT JSON_MERGE_PRESERVE('{"nome": "James", "sobrenome": "Bond", "id": "007"}',
    '{"nome": "Maxwell", "sobrenome": "Smart", "salario": 10000}',
    '{"nome": "Barbara", "cidade": "Rio de Janeiro"}');