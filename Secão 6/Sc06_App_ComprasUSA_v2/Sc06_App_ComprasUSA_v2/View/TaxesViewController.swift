//
//  TaxesViewController.swift
//  Sc06_App_ComprasUSA_v2
//
//  Created by paulopr4 on 25/07/19.
//  Copyright © 2019 paulopr4. All rights reserved.
//

import UIKit

class TaxesViewController: UIViewController {
    
    @IBOutlet weak var lbDolar: UILabel!
    @IBOutlet weak var lbStateTax: UILabel!
   @IBOutlet weak var lbIOFDescription: UILabel!
    @IBOutlet weak var lbStateTaxDescription: UILabel!
    @IBOutlet weak var lbIOF: UILabel!
    @IBOutlet weak var SWCreditCard: UISwitch!
    @IBOutlet weak var lbReal: UILabel!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        calculateTexes()
    }
    
    @IBAction func changeIOF(_ sender: UISwitch) {
        calculateTexes()
        
    }
    
    func calculateTexes() {
        lbStateTaxDescription.text = "Imposto do Estado (\(tc.getFormattedValue(of: tc.stateTax, withCurrency: ""))%)"
        lbIOFDescription.text = "IOF (\(tc.getFormattedValue(of: tc.iof, withCurrency: ""))%)"
        
        lbDolar.text = tc.getFormattedValue(of: tc.shoppingValue, withCurrency: "US$  ")
        lbStateTax.text = tc.getFormattedValue(of: tc.stateTaxValue, withCurrency: "US$  ")
        lbIOF.text = tc.getFormattedValue(of: tc.iofValue, withCurrency: "US$  ")
        
        let real = tc.calculate(usingCreditCard: SWCreditCard.isOn)
        lbReal.text = tc.getFormattedValue(of: real, withCurrency: "R$  ")
    }
}
