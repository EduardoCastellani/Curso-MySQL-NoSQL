/*
Inserindo novos campos em um documento
*/

db.inscricoes.update(
    {"_id" : ObjectId("64ad42f16fb4650f229d14ff")},
    {
        $set: {
            "localização": {
                "endereco": "Avenida Zulmira Borba, 1978"
            }
        }
    }
)

/*
Utilizando coordenadas geograficas 

Obs: Quando trabalhamos com coordenadas geograficas no mongoDB, precisamos do campo COORDINATES e especificar o TYPE
*/

db.inscricoes.update(
    {"_id" : ObjectId("64ad42f16fb4650f229d14ff")},
    {
        $set: {
            "localização": {
                "endereco": "Avenida Zulmira Borba, 1978",
                "coordinates": [-20.388008, -54.577545],
                "type": "Point"
            }
        }
    }
)

/* 
Importando dados para o banco de dados

a) Abra o terminal no mesmo diretório que está o arquivo contendo os dados;

b) Execute o comando abaixo: 
*/

mongoimport -d meubanco -c inscricoes --jsonArray < inscricoes.json

/*
Onde, 'meubanco' é o nome do banco dados, 'inscricoes' é o nome da coleção na qual
queremos importar os dados e por último 'inscricoes.json' é o arquivo contendo
os dados.
*/ 

/*
Como utilizar os recursos avançados do MongoDB para buscar dados por localização?


1 - Devemos informar ao MonboDB qual é o campo que deve ser utilizado como índice de busca.
*/

db.inscricoes.createIndex(
    {
        "localizacao": "2dsphere"
    }
)

/* 2 - Devemos realizar uma consulta utilizando agregação para que os cálculos sejam aplicados. 

Caso queiramos ignorar o primeiro resultado, então devemos informar isso na consulta.
*/

db.inscricoes.aggregate(
    [
        {
            $geoNear: {
                "near": {
                    "coordinates": [-20.388008, -54.577546],
                    "type": "Point"
                },
                "distanceField": "distancia.calculada",
                "spherical": true
            }
        },
        { $limit: 5},/*Limita a busca*/
        { $skip: 1 } /*Pula o buscador*/
    ]
).pretty()
