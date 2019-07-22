//
//  ViewController.swift
//  Cilco de Vida
//
//  Created by paulopr4 on 17/07/19.
//  Copyright © 2019 paulopr4. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Tela 1: viewDidLoad ")
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        label.text = "Entre com seu nome"
        print("Tela 1: viewWillAppear ")
    }
    override func viewDidAppear(_ animated: Bool) {
       super.viewDidAppear(animated)
        print("Tela 1: viewDidAppear ")
    }
   override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Tela 1: viewWillDisappear ")
        label.text = textField.text
    
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Tela 1: viewDidDisappear ")
    }

}

