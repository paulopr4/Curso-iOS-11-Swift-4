import UIKit

var str = "Hello, playground"

//  O que são enumeradores ? é um tipo especial  que permite que vc  possa representar um conjunto ou grupo especial de
// opções

enum Compasspoint {
    case  north
    case east
    case west
    case south
    
}

var direction: Compasspoint = Compasspoint.north

enum SeatPosition: String {
    case aisle = "corredor", middle = "meio", windows = "janela"
}

var passengerSeat = SeatPosition.windows
switch passengerSeat {
case .aisle:
    print("O passageiro está sentado no corredor")
case .middle:
    print("O passageiro está sentaedo no meio")
case.windows:
    print("O passageiro está sentaedo na janela")
    
}
print(passengerSeat.hashValue)


enum Month: Int {
    
    case january
    case february
    case march
    case april
    case may
    case june
    case july
    case august
    case september
    case october
    case november
    case december
    }
print(Month.august.rawValue)

// valores associados

enum Measure {
    case weight(Double)
    case age(Int)
    case size (width: Double, height: Double)
}

let measure: Measure = .size(width: 0.6, height: 1.71) //.weight //.age(39)
switch Measure {
case .weight (let weight):
    print("O seu peso é \(weight)")
case .age (let age):
    print("A sua idade é \(age)")
//case .size(let size):
    print("As suas medidas de tamanho são \(size.width)m de largura e \(size.height) o de altura")
    
    
}


