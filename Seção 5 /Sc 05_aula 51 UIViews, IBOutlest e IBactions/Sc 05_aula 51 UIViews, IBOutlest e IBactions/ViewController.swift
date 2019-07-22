//
//  ViewController.swift
//  Sc 05_aula 51 UIViews, IBOutlest e IBactions
//
//  Created by paulopr4 on 18/07/19.
//  Copyright © 2019 paulopr4. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var MyView: UIView!
    @IBOutlet weak var Button: UIButton!
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet var buttons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // O que é um Outlet  ? : palavra reservada que nos possibilita a representar um elemento visual
    // atraves de uma variável
    

    @IBAction func executerun(_ sender: UIButton) {
        
    }
    @IBAction func doSomething(_ sender: UIButton, forEvent event: UIEvent) {
    }
}

