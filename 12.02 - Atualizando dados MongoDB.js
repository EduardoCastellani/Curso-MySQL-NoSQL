db.inscricoes.insert(
    {
        "aluno": "Guilherme Datas",
        "data": new Date(),
        "curso": {
            "nome": "Programação para Internet"
        },
        "notas": [7, 8.5, 10]
    }
)

db.inscricoes.insert(
    {
        "aluno": "Angela Souza",
        "data": new Date(),
        "curso": {
            "nome": "Programação para Internet"
        },
        "notas": [7.4, 9.5, 9.4]
    }
)

db.inscricoes.insert(
    {
        "aluno": "William Douglas",
        "data": new Date(),
        "curso": {
            "nome": "Programação para Internet"
        },
        "notas": [6.4, 3.5, 6.4]
    }
)


db.inscricoes.find(
    {
        "curso.nome": "Programação para Internet"
    }
).pretty()

/*
O comando Update recebe dois parametro, o primeiro funciona como o WHERE
no SQL e serve para filtrar os documentos no qual queremos atualizar, o segundo
é como o documento deve ficar apos a ATT.
Obs: 
- O comando 'update' ira atualizar o primeiro documento que encontrar
- O comando 'update' ira substituir o documento original pelo nome especificado no segundo parametro
- SEMPRE USE O $SET PARA ALTERAR APENAS UM DOS CAMPOS
- Multi: true é para atualizar varios dados de uma vez
*/

db.inscricoes.update(
    {"curso.nome": "Programação para internet"},
    {
        $set: {
            "nome": "Programação para Internet"
        },
        {
            multi: true
        }
    }
)
 /*
 Operador $PUSH só add um elemento no Array[]
 */
db.inscricoes.update(
    { "_id" : ObjectId("64ad42f16fb4650f229d14ff")},
    {
    $push: {
        notas: 6.7
    }
    }
)

/*
Atualizando mais de um valor com o $each
*/
db.inscricoes.update(
	{"_id" : ObjectId("64ad3a87f6aac24c5797ae5d")},
	{
		$push: {
			notas: {
				$each: [9.2, 5]
			}
		}
	}
)

/*O remove é simples, apenas filtar o dado e excluir, recomendasse que sempre use o remove no ID*/

db.inscricoes.remove(
    {
        "_id" : ObjectId("64ac030e4f37d3c6bb1423f7")
    }
)
