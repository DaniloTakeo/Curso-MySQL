-- Custo da Query = 8849.05
SELECT * FROM notas_fiscas WHERE data_venda = '2017-01-01';

EXPLAIN FORMAT=JSON SELECT * FROM notas_fiscas WHERE data_venda = '2017-01-01' \G

ALTER TABLE notas_fiscais ADD INDEX data_venda;

/* -------------------------------------------------------------------------------------- */
-- APÓS A CRIAÇÃO DO INDEX
-- Custo da query = 60.28
SELECT * FROM notas_fiscas WHERE data_venda = '2017-01-01';

EXPLAIN FORMAT=JSON SELECT * FROM notas_fiscas WHERE data_venda = '2017-01-01' \G

/* -------------------------------------------------------------------------------------- */

ALTER TABLE notas_fiscais DROP INDEX data_venda;

-- APÓS DROPAR O INDEX
-- Custo da Query = 8994.33
SELECT * FROM notas_fiscas WHERE data_venda = '2017-01-01';

EXPLAIN FORMAT=JSON SELECT * FROM notas_fiscas WHERE data_venda = '2017-01-01' \G