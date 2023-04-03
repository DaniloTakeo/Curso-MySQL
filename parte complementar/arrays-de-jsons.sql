--["praia", "futebol", "cinema"]

SELECT '["praia", "futebol", "cinema"]';

SELECT JSON_EXTRACT('["praia", "futebol", "cinema"]', '$.1');

--{"hobby": ["praia", "futebol", "cinema"]}

SELECT JSON_EXTRACT('{"hobby": ["praia", "futebol", "cinema"]}', '$.1');
SELECT JSON_EXTRACT('{"hobby": ["praia", "futebol", "cinema"]}', '$.hobby[1]');

/*
{
    "hobby": [
        {
            "nome": "praia",
            "local": "ar livre"
        },
        {
            "nome": "futebol",
            "local": "ar livire"
        },
        {
            "nome": "cinema",
            "local": "fechado"
        }
    ]
}
*/

SELECT JSON_EXTRACT('{"hobby": [{"nome": "praia", "local": "ar livre"}, {"nome": "futebol", "local": "ar livire}, {"nome": "cinema", "local": "fechado"}]}',
    , '$.hobby[1]');

SELECT JSON_EXTRACT('{"hobby": [{"nome": "praia", "local": "ar livre"}, {"nome": "futebol", "local": "ar livire}, {"nome": "cinema", "local": "fechado"}]}',
    , '$.hobby[1].nome');

SELECT JSON_EXTRACT('{"hobby": [{"nome": "praia", "local": "ar livre"}, {"nome": "futebol", "local": "ar livire}, {"nome": "cinema", "local": "fechado"}]}',
    , '$.hobby[0].nome')
UNION 
SELECT JSON_EXTRACT('{"hobby": [{"nome": "praia", "local": "ar livre"}, {"nome": "futebol", "local": "ar livire}, {"nome": "cinema", "local": "fechado"}]}',
    , '$.hobby[1].nome')
UNION 
SELECT JSON_EXTRACT('{"hobby": [{"nome": "praia", "local": "ar livre"}, {"nome": "futebol", "local": "ar livire}, {"nome": "cinema", "local": "fechado"}]}',
    , '$.hobby[2].nome');