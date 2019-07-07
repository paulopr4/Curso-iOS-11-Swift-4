import UIKit

var str = "Hello, playground"

// Operadores personalizados

//Unário -> Operam somente em 1 operando
//prefix
//postfix

//Binário -> Operam em 2 operando
// infix

// Prefix

prefix operator <|
prefix func <| (rhs: [Int]) -> [Int] {
    let result = rhs.map({$0 - 1})
    return result
}
let ages = [9,25,30,42,7,18]
let lastYearAges = <|ages

//postFix

postfix operator ➜
postfix func ➜ (lhs: Int) -> Int {
    var result = 1
    if lhs < 2 {
        return result
    }
    for i in 2...lhs {
        result *= i
    }
    return result
}

3➜

infix operator ---
func --- (lhs: Int, rhs: Int) -> [Int] {
    return Array (rhs...lhs).reversed()
    
}
30---12

infix operator >-<
func >-< (total: Int, universe: Int) -> [Int] {
    var result: [Int] = []
    while result.count < total {
        let randonmNumber = Int(arc4random_uniform(UInt32(universe))+1)
        if !result.contains(randonmNumber) {
            result.append(randonmNumber)
        }
    }
    return result.sorted()
}

print("Numeros da Mega-Sena \(6>-<60)")
print("Numeros da Quina \(5>-<80)")
print("Numeros da lotofácil \(15>-<25)")



