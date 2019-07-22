import UIKit

var str = "Hello, playground"

// Classes Vs Structs

struct Student {
    var name: String
    var age: Int
}

class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

var student1 = Student(name: "Zeca", age: 22)
var student2 = student1

student1.name = "Alisson"
student1.age = 33

print(student2.name, student2.age)

// caracteristica de um Structs : Quando passamos uma Struct para outra, estamos fazendo uma copia dela ...
// tipos que quando é passado para o outro geram uma copia esse termo ou ação é chamado de (Value Type).

var person1 = Person(name: "Zeca", age: 22)
var person2 = person1

person1.name = "Alisson"
person1.age = 33

print(person2.name, person2.age)

// (Refence Type) esse método ou ação acontece em class pois os tipos são passados por referencia e não por copia
// todo e  qualquer tipo em Swift é na verdade um (Value type).

//Exemplo de copia com Struct

let array: [Int] = [1,2,3,4,5,6,7,8,9,10]

//Copy on Write

var array2 = array
array2[0] = 45













