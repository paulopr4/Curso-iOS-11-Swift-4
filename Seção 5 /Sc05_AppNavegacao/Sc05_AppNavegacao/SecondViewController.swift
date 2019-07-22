//
//  SecondViewController.swift
//  Sc05_AppNavegacao
//
//  Created by paulopr4 on 18/07/19.
//  Copyright © 2019 paulopr4. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        print("desfanzendo segunda tela")
    } // dismiss serve para desfazer a tela e voltar a anterior
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
