import UIKit

var str = "Hello, playground"

//POLIMORFISMO : É  a capacidade de uma classe de alterar o seu funcionamento, modificando as suas proprias caracteriscas na evolucão do código ...
// Ou seja modicar os comportamentos que   foram herdados da class mae.

class Animal {
    
    let color: String
    let gender: Character
    let breed: String
    
    // incializando uma Classe
    init(color:String, gender: Character, breed: String) {
        self.color = color
        self.breed = breed
        self.gender = gender
    }
    
    func emiteSound() {
        print("...")
    }
}

class Dog: Animal {
    
    override func emiteSound() {
        print("au au au ")
    }
    
    func run() {
        print("O cachorro está correndo")
    }
}

class Bird: Animal {
    let canFly: Bool
    
    func fly() {
        if canFly {
            print("O passáro está voando")
        }else{
            print("Este passáro não voa")
        }
    }
    override func emiteSound() {
        print("piu piu")
    }

    init(color: String, gender: Character, breed: String, canFly: Bool) {
        self.canFly = canFly
        super.init(color: color, gender: gender, breed: breed)
    }
    
    convenience init(color: String, breed: String) {
        self.init(color: color, gender: "M", breed: breed, canFly: true)
    }
}

class Duck: Bird {
    
        init(color:String, gender: Character, breed: String)  {
        super.init(color: color,gender: gender, breed: breed, canFly: true)
    }
    
    override func emiteSound() {
        print("Quack, Quack, Quack")
    }
}

let billy = Dog(color: "Preto e branco", gender: "M", breed: "Lhasa Apso")
let zeCarioca = Bird(color: "Verde e Amarelo", gender: "M",breed: "Papagaio", canFly: true)
let maleBird = Bird(color: "Black", breed: "sabiá")
let donald = Duck(color: "Branco", gender: "M", breed: "Disney")


// TYPE CASTING : Forma que temos de tratar um tipo de outra maneiras  ...

let animals: [Animal] = [
    Animal(color: "Preto", gender: "F", breed: "Zurubeba"),
    Dog(color: "Marrom", gender: "M", breed: "Cocker Spaniel"),
    Dog(color: "Marrom", gender: "M", breed: "PitBull"),
    Bird(color: "Green", gender: "F", breed: "Avestruz", canFly: false)
    ]

print("++++++++++++++++")
for animal in animals {
    animal.emiteSound()
    
    
////    if animal is Dog{
////        (animal as! Dog).run()
////    }
////    if animal is Duck {
////        (animal as! Duck).fly() //tratando de maneira forçada
////    }
////
//}
//
//
//// usando Bind para tramento
//
//if let dog = animals as? Dog {
//    dog.run()
//}
//if let duck = animals as? Duck {
//    duck.fly()
}
//


// usando Switch

switch animals{
case  let dog as Dog:
    dog.run()
case let bird as Bird:
    bird.fly()
default:
    break
}


