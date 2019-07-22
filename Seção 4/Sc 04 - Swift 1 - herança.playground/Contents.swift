import UIKit

var str = "Hello, playground"

// Herança o que é ? recurso que permite que uma classe possa herdar as caracteristicas de uma classe !!!
// OOB podemos definir em qual classe ela pode herdar as caracteristicas ...

class Animal {
    let color: String
    let gender: Character
    let breed: String
    
    init(color: String, gender: Character, breed: String) {
        self.color = color
        self.breed = breed
        self.gender = gender
    }
    
    func emiteSound() {
        print("...")
    }
}

class Dog: Animal {
    func run() {
        print("O cachorro está correndo")
        
    }
}

class Bird: Animal {
    let canFly: Bool
    
    func fly() {
        if canFly {
        print("O pássaro está voando")
        }else {
        print("O pássaro está voando")
        }
    }
    // construtor é um método que precisa alimentar todas as propriedades de uma classe (designated initializer).
    init(color: String, gender: Character, breed: String, canFly: Bool) {
        self.canFly = canFly
        super.init(color: color, gender: gender, breed: breed)
    }
    // Convenience initializer : Construtor de conveniencia
    // Regrar para usar convenience :
    // 1) Desginated initializer deve chamar outro designated da sua classe base
    // 2) Um convenience initalizer deve chamar outro initializer da mesma classe
    // 3) um convenience initalizer deve chamar, no final, um designated initializer
    
    convenience init(color: String, breed: String) {
        self.init(color: color, gender: "M", breed: breed, canFly: true)
    }
    
}

let billy = Dog(color: "Preto e branco", gender: "M", breed: "Lhasa Apso")
let zeCarioca = Bird(color: "Verde e Amarelo", gender: "M", breed: "Papagio", canFly: true)

let maleBird = Bird(color: "black", breed: "Sabiá")


billy.emiteSound()
zeCarioca.emiteSound()
