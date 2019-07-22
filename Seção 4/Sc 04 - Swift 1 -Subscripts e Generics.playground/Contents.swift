import UIKit

var str = "Hello, playground"

//Subscripts e Generics : é uma forma de acessar as propriedades de um objeto fazendo uso da notação Abre e fecha colchetes ....


//class Car {
//
//    var lincensePlate: String {
//
//        subscript(index: Int) -> String {
//            get {
//                let character = Array(lincensePlate)[index]
//                return String(character)
//            }
//            set{
//                var array = Array(lincesePlate)
//                array[index] = Character(newValue)
//                self.lincensePlate = String(array)
//
//            }
//        }
//        init(lincensePlate: String) {
//            self.lincensePlate = lincensePlate
//        }
//
//    }
//
//}
//
//let car = Car(lincensePlate: "EXP-8722")
//Car[0] = "A"
//print(car.lincensePlate)


//Generics

func swapValues<T>(_ a: inout T, _ b: inout T) {
    let tempA = a
    a = b
    b = tempA
}

var a = "10"
var b = "20"

swapValues(&a, &b)

