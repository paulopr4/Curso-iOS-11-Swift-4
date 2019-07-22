import UIKit
import Foundation
var str = "Hello, playground"

//EXTENSIONS : Através desse meio nós conseguimos adicionar funcionalidades as Class, Structc, Enuns etc porém ñao podemos moficar o seu funcionamento.
// Podemos adicionar novas propriedades, criar novos métodos e novos construtores desde que eles chegam convienice initializer obs podemos
// adicionar propriedades desde que ela seja propriedade computada.

let name = "Paulo Ricardo Oliveira"

extension String {
    var vowels: [Character] {
        var list: [Character] = []
        for character in list  {
            switch String(character).lowercased() {
            case "a","p", "o", "u","r":
                list.append(character)
            default:
                break
            }
        }
         return list
    }
    
    func initals() -> String {
        return String(self.components(separatedBy: " ").map({$0.first!}))
    }
}

print(name.vowels)
print(name.initals())


// Exemplo conta bancária

class Account {
    let number: String
    var balance: Double = 0
    
    init(number: String) {
        self.number = number
    }
}


extension Account {
    convenience init(number: String, balance: Double) {
        self.init(number: number)
        self.balance = balance
        
    }
}

let account = Account(number: "227265252627282")
