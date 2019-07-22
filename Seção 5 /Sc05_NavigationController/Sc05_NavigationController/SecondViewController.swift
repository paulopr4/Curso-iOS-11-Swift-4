//
//  SecondViewController.swift
//  Sc05_NavigationController
//
//  Created by paulopr4 on 20/07/19.
//  Copyright © 2019 paulopr4. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //navigationController?.setNavigationBarHidden(false, animated: true)

        // Do any additional setup after loading the view.
    }
    

    @IBAction func back(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        
    }

}
