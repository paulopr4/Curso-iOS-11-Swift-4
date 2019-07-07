import UIKit

var str = "Hello, playground"

var name1 = "Fulano"
var name2 = "Ciclano"

var names = ["Fulano","Ciclano","Beltrano"]
var nameB: [String] = ["Fulano", "Ciclano", "Beltrano"]

var lotteryNumbers: [Int] = []
var phoneNumbers: [String]?

var ages: [UInt8] = [9,7,12,15,22]

var guests = ["João", "Paula", "Alexandre", "Patricia", "Sandra"]

print(guests.count) // conta array

print(guests.isEmpty) // verifica se o Arrray esta vazio

let secondGuest = guests[1]
guests[0] = "Paulo"

print(guests)
guests[0...1] = ["Eric", "Roberto", "Joana", "Bia"] // método usado para adicionar alementos em um array removendo e adicioando conforme o Range
print(guests)

if let first = guests.first { // usando Bind para desempacotar e verificando primera posicao do Array
    
    print(first)
}

if let last = guests.last { // usando Bind para desempacotar
    
    print(last)
123456
    
guests += ["Sandro", "helena", "Elen"]
guests.append("Edina")

guests.insert("Ricardo", at: 2)
print(guests)

//guests.removeFirst()
//guests.removeLast()
//guests.remove(at: 2)
//guests.removeAll()

}

//guests.contains("Elen"){
//    print("A Elen foi convidada!!")
//}




