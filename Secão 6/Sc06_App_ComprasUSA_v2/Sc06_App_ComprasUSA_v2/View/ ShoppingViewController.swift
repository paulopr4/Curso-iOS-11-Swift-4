//
//  ViewController.swift
//  Sc06_App_ComprasUSA_v2
//
//  Created by paulopr4 on 25/07/19.
//  Copyright © 2019 paulopr4. All rights reserved.
//

import UIKit

class ShoppingViewController: UIViewController {
    
    @IBOutlet weak var textFieldDolar: UITextField!
    @IBOutlet weak var labelDescription: UILabel!
    @IBOutlet weak var labelReal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setAmmount()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textFieldDolar.resignFirstResponder()
        setAmmount()
    }
    
    func setAmmount() {
        print("função calcular dolar")
        tc.shoppingValue = tc.convertDouble(textFieldDolar.text!)
        labelReal.text = tc.getFormattedValue(of: tc.shoppingValue * tc.dolar, withCurrency:"R$ ")
        let dolar = tc.getFormattedValue(of: tc.dolar, withCurrency: "")
        labelDescription.text = "Valor sem impostos (dólar \(dolar))"
    }
    
}


