import UIKit

var str = "Hello, playground"


//CLosure : é um pedaço auto contido de códigos e funcionalidade que podem ser repassados e utilizados em seu códigos

// Sintaxe nos primeiros 2 minutos do video :

func sum(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}
func calculate(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a,b)
}

calculate(20, 10, operation: sum)

calculate(20, 10, operation: {(a: Int, b: Int) -> Int in // usando Closure sem a necessidade de implementar funções
    return a / b
    
})

calculate(20, 10, operation: {(a, b) -> Int in //Simplicando a Closure
    return a * b
    
})

calculate(20, 10, operation: {
    return $0 * $1
    
})

calculate(20, 10, operation: {$0 * $1})

calculate(20, 10, operation: *)

calculate(10, 20) {$0 * $1}

import Foundation

var names = [
        "   alessandra    ",
        "Jéssica       ",
        " Anderson   ",
        "Dennys    ",
        "Harley"

]


//Map

let coorectedNames = names.map({$0.trimmingCharacters(in: CharacterSet.whitespaces)})
print(coorectedNames)

let uppercasednames = coorectedNames.map({$0.uppercased()})
print(coorectedNames)

let Oliveira = coorectedNames.map({$0 +  " Oliveira"})
print(Oliveira)


// Filter

let NewNames = coorectedNames.filter({$0.count < 7})
    print(NewNames)

//Reduce
let sumLetters = coorectedNames.reduce(0, {$0 + $1.count})
print(sumLetters)
