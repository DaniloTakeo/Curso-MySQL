CREATE DATABASE testejson;

USE testejson;

-- ["A", "B", "C"]
-- $[0] = "A", $[1] = "B", $[2] = "C"

CREATE TABLE X(
    Y JSON
);

INSERT INTO X VALUES('["A", "B", "C"]');

SELECT * FROM X;
DELETE FROM X;

INSERT INTO X VALUES(JSON_ARRAY("A", "B", "C"));
SELECT * FROM X;

UPDATE X SET Y = JSON_ARRAY_APPEND(Y, "$[0]", "A1");
SELECT * FROM X;

UPDATE X SET Y = JSON_ARRAY_APPEND(Y, "$[1]", "B1", "$[2]", "C1");
SELECT * FROM X;

UPDATE X SET Y = JSON_ARRAY_APPEND(Y, "$", "D1");
SELECT * FROM X;

UPDATE X SET Y = JSON_ARRAY_INSERT(Y, "$[3]", "E1");
SELECT * FROM X;

UPDATE X SET Y = JSON_ARRAY_INSERT(Y, "$[0]", "AX");
SELECT * FROM X;

UPDATE X SET Y = JSON_ARRAY_INSERT(Y, "$[1][1]". "K");
SELECT * FROM X;
