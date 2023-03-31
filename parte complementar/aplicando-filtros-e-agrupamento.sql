SELECT JSON_EXTRACT(doc, '$.GNP') AS GNP,
    JSON_EXTRACT(doc, '$.Code') AS CODE,
    JSON_EXTRACT(doc, '$.Name') AS NAME,
    JSON_EXTRACT(doc, '$.IndepYear') AS INDEPYEAR,
    JSON_EXTRACT(doc, '$.geography.Region') AS REGION,
    JSON_EXTRACT(doc, '$.geography.Continent') AS CONTINENT,
    JSON_EXTRACT(doc, '$.geography.SurfaceArea') AS SURFACEAREA,
    JSON_EXTRACT(doc, '$.government.HeadOfState') AS HEADOFSTATE,
    JSON_EXTRACT(doc, '$.government.GovernmentForm') AS GOVERNMENTFORM,
    JSON_EXTRACT(doc, '$.demographics.Population') AS POPULATION,
    JSON_EXTRACT(doc, '$.demographics.LifeExpectancy') AS LIFEEXPECTANCY
FROM countryinfo;

SELECT JSON_EXTRACT(doc, '$.Code') AS CODE,
    REPLACE(JSON_EXTRACT(doc, '$.Code'), '"', '') AS  CODE2
FROM countryinfo;

SELECT JSON_EXTRACT(doc, '$.geography.Continent') AS CONTINENT,
    SUM(JSON_EXTRACT(doc, '$.demographics.Population')) AS POPULATION,
    AVG(JSON_EXTRACT(doc, '$.demographics.LifeExpectancy')) AS LIFEEXPECTANCY
FROM countryinfo
GROUP BY doc, '$.geography.Continent'
ORDER BY 2;

SELECT JSON_EXTRACT(doc, '$.geography.Continent') AS CONTINENT,
    SUM(JSON_EXTRACT(doc, '$.demographics.Population')) AS POPULATION,
    AVG(JSON_EXTRACT(doc, '$.demographics.LifeExpectancy')) AS LIFEEXPECTANCY
FROM countryinfo
WHERE JSON_EXTRACT(doc, '$.government.GovernmentForm') LIKE '%Monarchy%'
    AND JSON_EXTRACT(doc, '$.demographics.Population') >= 10000000
GROUP BY doc, '$.geography.Continent'
ORDER BY 2;

/* Atividade de filtro e agrupamento */
SELECT JSON_EXTRACT(jsonvalue, '$.Nome_Departamento') AS DEPARTAMENTO
FROM tb_object_departamento
WHERE JSON_EXTRACT(jsonvalue, '$.Cpf_Gerente') = '33344555587';

SELECT JSON_EXTRACT(jsonvalue, '$.Numero_Projeto') AS PROJETO, 
    AVG(JSON_EXTRACT(jsonvalue, '$.Horas')) AS MEDIA_DE_HORAS
FROM tb_object_trabalha_em
GROUP BY JSON_EXTRACT(jsonvalue, '$.Numero_Projeto');