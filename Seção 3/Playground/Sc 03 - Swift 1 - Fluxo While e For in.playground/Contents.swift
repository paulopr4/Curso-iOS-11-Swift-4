import UIKit

var str = "Hello, playground"

// Repetição Padrão

print("Estou no dia 1 de Julho")

for day in 1...30 {
    print("Estou no dia \(day) de Julho")
}

print("-------------")

for _ in 1...5 {
    print("Dedique-se ao curso de Desenvolvimento iOS 11")
}
// método usando For para percorrer um Array
let students = [
"João Francisco",
"Pedro Henrique",
"Gustavo Oliveira",
"Janaina Santos",
"Francisco José"
]

for student in students {
    print("O aluno \(student)veio na aula de hoje")
}

let name = "Paulo Ricardo"
for letter in name {
    print(letter)
}


for letter in name.enumerated() {
    print(index, letter)
}
// método usando For para percorrer Dictinary
let people = [
    "Paulo": 25,
    "Renta": 18,
    "Kleber": 33,
    "Eric": 39,
    "Carol": 36,

]

for person in people {
    print(person.key, person.value)
}


//gadorWhile 05/-7/2019

//var life = 10
//while life > 0 {
//    print("O jogador está com\(life) vidas")
//    life = life - 1
//}
////


import Foundation

//Exemplos de aplicação de While com numeros randanomicos

var megaSemana: [Int] = []
while megaSemana.count < 6 {
    let number = Int(arc4random_uniform(60)+1)
    if !megaSemana.contains(number) {
        megaSemana.append(number)
    }
    
}

print(megaSemana.sorted())

var tries  = 0
var diceNumber = 0
repeat {
    tries += 1
    diceNumber = Int(arc4random_uniform(6))
}while  diceNumber != 6
    print("Voce tirou 6 aoós \(tries) tentativas")


let grades = [10.0, 9.0]












