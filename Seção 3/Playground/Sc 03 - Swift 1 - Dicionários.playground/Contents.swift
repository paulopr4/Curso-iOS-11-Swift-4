import UIKit

var str = "Hello, playground"

/* Dicinário : Coleção NÃO-ORDENADA de Objetos de mesmo tipo, que são acessados através de uma chave.*/

var states  = [
    "AC": "Acre",
    "AL": "Alagoas",
    "AP": "Amapá",
    "AM": "Amazonas",
    "BA": "Bahia",
    "CE": "Ceará",
    "DF": "Distrito Federal",
    "ES": "Espirito Santos",
    
]

var studentGrade: [String: Double] = [:] // definindo tipo de um Dicicionário e inciando ele vazio

states["GO"] = "Goiáz" // adiconando um novo elemento em um dicionário

//states["GO"] = "Goiás"


let oldGO = states.updateValue("Goiás", forKey: "GO")
print(oldGO)

let myState = states["AL"] // Sempre que formos recuperar ou acessar um dicionário eles vai nos retornar um valor Optional

if let state =  myState { // bind para desembrular com segurança
    print(states)
}

states["GO"] = nil
print(states)

print(states.count)

// método para ter acesso as Keys de um dicionário, primeiro temos que atribuir a uma varialvel e depois converter em Array
let keys = Array(states.keys)
print(keys)

 let values = Array(states.values) // imprimindo apenas os valores do dicinário sem as chaves (usando values).
print(values)




