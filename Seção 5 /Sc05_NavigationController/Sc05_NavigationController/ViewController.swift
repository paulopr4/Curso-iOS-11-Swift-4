//
//  ViewController.swift
//  Sc05_NavigationController
//
//  Created by paulopr4 on 20/07/19.
//  Copyright © 2019 paulopr4. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       // navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    
    
    
    
    @IBAction func next(_ sender: UIButton) {
     performSegue(withIdentifier: "segue", sender: nil)
    }
    
    
    @IBAction func BackNext(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}




 // Navigation  controller permite que vc crie automaticamente a navegação no App no caso botão de volta para a tela anterior 
