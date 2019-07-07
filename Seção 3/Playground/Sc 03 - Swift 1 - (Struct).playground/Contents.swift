import UIKit

var str = "Hello, playground"

// Estruturas ( Structs) Nos permite criar os nossos proprios tipos de diversas formar e aplica-los em nossa programaçao !!! 

let age: Int = 20
let name: String = "Eric"

struct Person {
    
    var name: String?
    var age: Int = 0
    
    init(name: String) {
        self.name = name
    }
    
    func sayHello() {
        print("Ola")
    } // se o método da nossa Struct modifica uma propriedade neste caso temos que usar mutating
    mutating func incrementAge() {
        age += 1
    }
    
}

//var person = Person(name: "Paulo", age: 32)




var newPerson2 = Person(name: "Oliveira")
newPerson2.age = 39
newPerson2.incrementAge()


 // Computed Properties (Propriedades Computadas)

struct Temperatura {
    var celsius: Double
    var fahrenheit: Double {
        return celsius * 1.8 + 32
    }
}

var temperature = Temperatura(celsius: 25)
print(temperature.celsius)
print(temperature.fahrenheit)


