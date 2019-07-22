import UIKit

var str = "Hello, playground"
// Orientacão a Objetos
//Herança  : Possiblidade de um objeto herdar as caracteristicas de outro objeto, ou seja, suas propriedades e métodos

// Polimorfismo :
// Capacidade de um objeto de mofificar os comportamentso herdados do objeto pai, alterando suas propriedades e métodos ..

//Encapsulamento
//Técnica que permite que detalhes internos do funcionamento de uma classe permançam inacessiveis a outros objetos.


//CLASSES

class Person {
    var name : String
    var gender: Character
    var age: Int = 0
    
    init(name: String, gender: Character) {
        self.name = name
        self.gender = gender
    }
    func speak(sentence: String) {
        if age < 3 {
            print("gugu dada")
        }else {
            print(sentence)
        }
    }
    func introduce() {
        speak(sentence:"Olá, meu nome é \(name)")
    }
    
    
}


class Job {
    var title: String
    var sallary: Double
    
    init(title: String, sallary: Double) {
        self.title = title
        self.sallary = sallary
        
        
    }
}


let joao = Person(name: "Paulo", gender: "M")
let clara = Person(name: "Clara", gender: "F")
let fabio = Person(name: "Fábio", gender: "M")


joao.age = 34
clara.age = 27
fabio.age = 1

joao.introduce()
clara.introduce()
fabio.introduce()

class Vehicle {
    var speed: Double = 0 {
        didSet {
            speed = min(speed, maxSpeed)
        }
    }
    var model: String
    static let speedUnit = "Km/h"
    
    var maxSpeed: Double {
        return 250
    }
    // propriedade computada com get e set 
    var speedInMilesPerHour: Double {
        get {
            return speed / 1.60934
        }
        set {
            speed = newValue * 1.60934
        }
    }
    init(model: String) {
        self.model = model
    }
    
    func descript() -> String {
        return "Veículos: \(model), velocidade atual: \(speed)"
    }
    //método de classes
    class func alert() -> String {
        return "Se beber, mão dirija!!"
    }
}

print(Vehicle.alert())
print(Vehicle.speedUnit)

let car = Vehicle(model: "City")
car.speed = 500
print(car.speed)



