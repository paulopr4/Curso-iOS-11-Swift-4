import UIKit

var str = "Hello, playground"

// Funcão como aplicar e suas particularidades

/*
 func nome(parametro: Tipo) -> TipoDeREtorno {
 códigos e comandos
 
 return TipoDeRetorno
 }

 */

func sayHello() {
    print("Hello")
}

sayHello()

func say(message: String) {
    print(message)
}
say(message: "Bom dia !!")

func say(message: String, to: String) -> String {
    return message + " " + to
    
}

let sentence = say(message: "Boa noite ", to: "Caroline")
print(sentence)

func sum(_ a: Int, b: Int ) -> Int {
    return a + b
    
}
print((sum(10, b: 20)))

func multiply(_ number1: Int, by number2: Int) -> Int {
    return number1 * number2
}

print(multiply(20, by: 10))

func sum(_ initiaValue: Int, withValues values: Int...) -> Int {
    var result = initiaValue
    for value in values {
        result += value
    }
    return result
    
    
}
print(sum(2, withValues: 7,9,10,23))


