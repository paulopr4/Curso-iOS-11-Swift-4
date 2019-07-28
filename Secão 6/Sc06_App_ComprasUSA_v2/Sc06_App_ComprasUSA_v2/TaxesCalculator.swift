//
//  File.swift
//  Sc06_App_ComprasUSA_v2
//
//  Created by paulopr4 on 26/07/19.
//  Copyright © 2019 paulopr4. All rights reserved.
//

import Foundation

class TaxesCalculator {
    
    static let shared = TaxesCalculator()
    var dolar: Double = 3.76
    var iof: Double = 6.38
    var stateTax: Double = 7.0
    var shoppingValue : Double = 0
    
    var formatter = NumberFormatter()
    
    // Variáveis computadas
    var shoppingValueInReal: Double {
        return shoppingValue * dolar
    }
    
    var stateTaxValue: Double {
        return shoppingValue * stateTax/100
    }
    
    var iofValue: Double {
        return (shoppingValue + stateTax) * iof/100
        
    }
    
    func  calculate(usingCreditCard: Bool) -> Double {
        var finalValue = shoppingValue + stateTaxValue
        if usingCreditCard {
            finalValue += iofValue
             print(" ativada calculate")
        }
        return finalValue * dolar
       
    }
    
    func convertDouble(_ string: String) -> Double {
        formatter.numberStyle = .none
        print(" ativada convertDouble")
        return formatter.number(from: string)?.doubleValue ?? 0 //(operador de Coalescencia nula)
       
    }
    
    func getFormattedValue(of value: Double, withCurrency currency: String) -> String {
        
        formatter.numberStyle = .currency
        formatter.currencySymbol = currency
        formatter.alwaysShowsDecimalSeparator = true
         print(" ativada getFormattedValue")
        return formatter.string(for: value)!
       
    }
    
    private init() {
        formatter.usesGroupingSeparator = true
        
    }
}
