import UIKit

var str = "Hello, playground"

/* O que são Optionals
 É um tipo ou objeto que pode ou não ter valor, ou seja quando declaramos uma variavel e apenas atribuimos um tipo a ela e nao colocamos o valor
 ela simplesmente fica com valor opcional ( valor nil é ausencia de valor )
 
 */

var driverLicense: Int?
//driverLicense = 41562743
// print("A minha carteira de motorista é:", driverLicense!) // Desembrulhando o Optional (unwrap) modo arriscado

// Optional binding (modo seguro) para desempacotar um Optional

if let driveL = driverLicense {
    print("A minha carteira de motorista é:", driveL)
}else{
     print("Não possuo carteira de motorista")
}

var adressNumber = Int("100")
if let addressNumber = adressNumber {
    print(addressNumber)
}

// Técnica Nil coaliscing operator ( Operador de coalescencia nula )
let number: String = "578"
let addressNumber2 = Int(number) ?? 0 // ?? Operador de coalescencia nula, ele tenta desembrulhar o valor Optional da variavel se nao der certo ele coloca  0.

//Impliscit Unwrapped Optionals

var name2: String
name2 = "PauloRicardo"
if name2 != nil {
    print(name2)
}




























