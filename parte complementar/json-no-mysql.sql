CREATE SCHEMA json_curso;

CREATE TABLE foo(
    oldjson CHAR(255)
);

INSERT INTO foo VALUES('{"name": "Bond", "first": "James", "ID": "007"}');

SELECT * FROM foo;

CREATE TABLE bar(
    our_data JSON
);

INSERT INTO bar VALUES('{"name": "Bond", "first": "James", "ID": "007"}');

SELECT * FROM bar;

/* MySQL valida o formato do objeto em caso de tipo JSON */
INSERT INTO foo VALUES('{"name": "Smart", "first": "Maxwell", "ID": "86"'); -- FUNCIONA
INSERT INTO bar VALUES('{"name": "Smart", "first": "Maxwell", "ID": "86"'); -- NÃO FUNCIONA

INSERT INTO bar VALUES('{"name": "Smart", "first": "Maxwell", "ID": "86"}'); -- FUNCIONA

SELECT * FROM bar;

SELECT JSON_PRETTY(our_data) FROM bar;
