/*
Como filtrar dados de uma coleção com valores maiores que o especificado com o operador $GT
*/
db.inscricoes.find(
    {
        "notas": {
            $gt: 8.0
        }
    }
)

/*
Como filtrar dados de uma coleção com valores maioresou iguais o especificado com o operador $GTE
*/
db.inscricoes.find(
    {
        "notas": {
            $gte: 8.0
        }
    }
)

db.inscricoes.insert(
    {
        "aluno": "Jair Rodrigues",
        "data_nascimento": new Date(1981, 06, 19),
        "curso": {
            "nome": "História"
        },

        "notas": [6, 7, 8, 5.5]
    }
)

db.inscricoes.insert(
    {
        "aluno": "Bruna Marquezi",
        "data_nascimento": new Date(1995, 02, 06),
        "curso": {
            "nome": "História"
        },
        "notas": [10, 9.7, 6.5, 8.7]
    }
)

/*
Como filtrar apenas um resultado
*/

db.inscricoes.findOne(
    {
        "notas": {
            $gt: 8.0
        }
    }
)

/*
Como ordernar em ordem alfabetica
Parametro .sort() recebe os dados no estilo valor, sendo a chave no campo 
no qual queremos ordenar e o valor se a ordenação é cres ou desc
- 1 Para ordem crescente e -1 para ordem descrescente 
*/

db.inscricoes.find().sort({"aluno": 1}).pretty()

db.inscricoes.find().sort({"aluno": -1}).pretty()

/*
Ordenação com limitação
*/

db.inscricoes.find().sort({"aluno": 1}).limit(3).pretty()