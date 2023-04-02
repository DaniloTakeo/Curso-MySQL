TRUNCATE X;

INSERT INTO X VALUES('{"key1": "value1"}');

SELECT Y FROM X;

UPDATE X SET Y = JSON_INSERT(Y, "$.key2", "value2");
SELECT Y FROM X;

UPDATE X SET Y = JSON_INSERT(Y, "$.key3", "value3", "$.key4", "value4");
SELECT Y FROM X;

UPDATE X SET Y = JSON_INSERT(Y, "$.key1", "value1x", "$.key5", "value4");
SELECT Y FROM X;

UPDATE X SET Y = JSON_REPLACE(Y, "$.key1", "value1x");
SELECT Y FROM X;

UPDATE X SET Y = JSON_REPLACE(Y, "$.key2", "value2x", "$.key6", "value6x");
SELECT Y FROM X;

UPDATE X SET Y = JSON_REMOVE(Y, "$.key6");
SELECT Y FROM X;

UPDATE X SET Y = JSON_REMOVE(Y, "$.key5", "$.key4");
SELECT Y FROM X;

UPDATE X SET Y = JSON_SET(Y, "$.key1", "value1", "$.key4", "value4");
SELECT Y FROM X;
