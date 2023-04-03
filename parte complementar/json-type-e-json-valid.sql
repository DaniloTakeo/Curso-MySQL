
SELECT JSON_TYPE('{"A": [10, true]}');

SELECT JSON_EXTRACT('{"A": [10, true]}', '$.A');

SELECT JSON_TYPE(JSON_EXTRACT('{"A": [10, true]}', '$.A'));

SELECT JSON_TYPE(JSON_EXTRACT('{"A": [10, true]}', '$.A[0]'));
SELECT JSON_TYPE(JSON_EXTRACT('{"A": [10, true]}', '$.A[1]'));

SELECT JSON_VALID('{"A": [10, true]}');

SELECT JSON_VALID('{"A": [10, true]');
