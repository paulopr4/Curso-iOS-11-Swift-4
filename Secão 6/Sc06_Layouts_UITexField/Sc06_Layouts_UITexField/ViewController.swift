//
//  ViewController.swift
//  Sc06_Layouts_UITexField
//
//  Created by paulopr4 on 22/07/19.
//  Copyright © 2019 paulopr4. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nome: UITextField!
    @IBOutlet weak var tfemail: UITextField!
    @IBOutlet weak var tfpassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tfemail.delegate = self
        tfpassword.delegate = self
        
        
        func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            view.endEditing(true)
            print("Toque na tela")
        }
        
    }
    func textFieldShowldReturn(_ textField: UITextField) -> Bool {
        
        if textField == nome {
            tfemail.becomeFirstResponder()
        }else if textField == tfemail {
            print("Enviado dados ao servidor")
            textField.resignFirstResponder()
            //view.endEditing(true)
            
            
        }
        
        return true
        
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return !textField.text!.isEmpty
    }

}
