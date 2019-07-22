//
//  ViewController.swift
//  Sc05_AppNavegacao
//
//  Created by paulopr4 on 18/07/19.
//  Copyright © 2019 paulopr4. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        performSegue(withIdentifier: "segue", sender: nil)
        print("mudando de tela")
    } // toque na tela e uma ação executada ...

    @IBAction func showSecondScreen(_ sender: UIButton) {
        performSegue(withIdentifier: "segue", sender: nil)
    } // esse códgio é responsavel em chamar a segue e mudar de tela
    
    @IBAction func unwindView(segue: UIStoryboardSegue) {
        print("saindo da terceira para primeira")
    }
} // desfazendo as telas e não acumulando telas ....

// O que Segue : responsavel por fazer a ligaçao entre duas telas,
// podemos colocar um identificador a ela pois nos ajuda a executar a segue via codigo.
