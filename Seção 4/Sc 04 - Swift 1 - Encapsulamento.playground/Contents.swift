
import UIKit

var str = "Hello, playground"

// ENCAPSULAMENTO O QUE É ? Técnica   aplicada como forma de proteção dentro do código  onde podemos ter :
// Open e Public, Internal, FilePrivate, Private 13:00 no curso ....


class CreditCard {
    
    let number : String
    let limit: Double
    private var invoiceValue: Double = 0
    
    let iof: Double = 6.38
    
    init(number: String, limit: Double) {
        self.number = number
        self.limit = limit
    }
    
    func makePurchase(off value: Double, isInternational: Bool) -> Bool {
        let debit = isInternational ? value * (1 + iof/100) : value
        let finalvalue = invoiceValue + debit
        if finalvalue > limit {
            return false
        }else{
            invoiceValue = finalvalue
            return true
        }
    }
    func getInvoice() -> Double {
        return invoiceValue
    }
    var invoice: Double {
        return invoiceValue
        
    }
}


let creditCard = CreditCard(number: "12345-9876-2893-1937", limit: 5000)
creditCard.makePurchase(off: 1500, isInternational: true)
print(creditCard.getInvoice())


class DebitCreditCard: CreditCard {
    private var _balance: Double = 0
    var balance: Double {
        return _balance
    }
    func makeTransaction(of value: Double) {
        _balance += value
    }
}

let debitCreditCard = DebitCreditCard(number: "12345-9876-2893-1137", limit: 5000)
