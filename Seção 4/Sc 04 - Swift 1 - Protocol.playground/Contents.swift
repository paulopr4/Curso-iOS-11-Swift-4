import UIKit

var str = "Hello, playground"

//PROTOCOLOS
// Recurso que define um tipo de contrato ou regras que devem ser implementados pelo tipo que deseja implementar ou adotar
// Defini como a funcionalidade deve existir mas nao como implementar.
// Quando um determinado tipo adota um protocolo e implementa seus métodos dizemos que ele está em conformidade com os tipos.

enum FuelType {
    case gasoline, ethanol, dissel, flex
}

protocol ACCapable {
    var hasAC: Bool {get set}
    func turnAC(on: Bool)
}

class Vehicle {
    var brand: String
    var fuelType: FuelType
    
    init(brand: String, fuelType: FuelType) {
        self.brand = brand
        self.fuelType = fuelType
    }
}

class Car: Vehicle, ACCapable {
    var numberOfDoors : Int
    var hasAC: Bool = true
    
    init(brand: String, fuelType: FuelType, numberOfDoors: Int) {
        self.numberOfDoors = numberOfDoors
        super.init(brand: brand, fuelType: fuelType)
    }
    func turnAC(on: Bool) {
        if on {
            print("ligando ar")
        }else{
        print(" desligando Ar")
        }
    }
}



class Bike: Vehicle {
    var cc : Int
    
    init(brand: String, fuelType: FuelType, cc: Int) {
        self.cc = cc
        super.init(brand: brand, fuelType: fuelType)
    }
}

class Airplane: Vehicle, ACCapable {
    var numberOfEngines : Int
    var hasAC: Bool = true
    
    init(brand: String, fuelType: FuelType, numberOfEngines: Int) {
        self.numberOfEngines = numberOfEngines
        super.init(brand: brand, fuelType: fuelType)
    }
    func turnAC(on: Bool) {
        if numberOfEngines > 1 {
            print("Aviões mono-motores não ligar ar-condicionado")
        }else{
        if on {
            print("ligando ar")
        }else{
            print(" desligando Ar")
        }
    }
}

}
    

