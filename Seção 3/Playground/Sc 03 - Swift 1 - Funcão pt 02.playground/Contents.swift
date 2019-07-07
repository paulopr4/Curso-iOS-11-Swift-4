import UIKit

var str = "Hello, playground"

// First Class Citizen : O que é ?
// Quando ele suporta todos os tipos basícos da operacão ....

func sum(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func subract(_ a: Int, _ b: Int) -> Int {
    return a - b
}
func divide(_ a: Int, _ b: Int) -> Int {
    return a / b
}
func multiply(_ a: Int, _ b: Int) -> Int {
    return a * b
}

typealias Op = (Int, Int) -> Int // usado para dar apelidos nas declarações ou atribuições

func applyOperation(_ a: Int, _ b: Int, operation: Op) -> Int {
    return operation(a, b)
}



let result = applyOperation(10, 20, operation: sum)
let resultTwo = applyOperation(10, 20, operation: multiply)
let resultThree = applyOperation(20, 2, operation: divide)
let resultFour = applyOperation(20, 10, operation: subract)


func getOperation(_ operation: String) -> Op {
    switch operation {
    case "soma":
        return sum
    case "subração":
        return subract
    case "multiplicação":
        return multiply
    default:
        return divide
    }
}

var operation = getOperation("subração")
operation(30,15)
