SELECT doc FROM countryinfo WHERE _id = 'USA';
SELECT JSON_KEYS(doc) FROM countryinfo WHERE _id = 'USA';

SELECT JSON_KEYS(doc, '$.geography') FROM countryinfo WHERE _id = 'USA';

SELECT JSON_EXTRACT(doc, '$.government') FROM countryinfo WHERE _id = 'USA';
SELECT JSON_EXTRACT(doc, '$.IndepYear') FROM countryinfo WHERE _id = 'USA';
SELECT JSON_EXTRACT(doc, '$.government.HeadOfState') FROM countryinfo WHERE _id = 'USA';
SELECT JSON_EXTRACT(doc, '$.government.HeadOfState') AS HeadOfState FROM countryinfo;

SELECT JSON_EXTRACT(doc, '$.government.HeadOfState') AS HeadOfState,
    JSON_EXTRACT(doc, '$.IndepYear')
FROM countryinfo WHERE _id = 'USA';
