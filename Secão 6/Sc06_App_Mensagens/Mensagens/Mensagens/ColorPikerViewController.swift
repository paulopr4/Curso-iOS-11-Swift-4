//
//  ColorPikerViewController.swift
//  Mensagens
//
//  Created by paulopr4 on 24/07/19.
//  Copyright © 2019 Eric Brito. All rights reserved.
//

import UIKit

protocol ColorPickerDelegate: class {
    func applyColor(color: UIColor)
    
}

class ColorPikerViewController: UIViewController {
    
    @IBOutlet weak var viColor: UIView!
    @IBOutlet weak var slRed: UISlider!
    @IBOutlet weak var slGreen: UISlider!
    @IBOutlet weak var slBlue: UISlider!
    
    weak var delegate : ColorPickerDelegate?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   
    @IBAction func chooseColor(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        delegate?.applyColor(color: viColor.backgroundColor!)
        
        
    }
    
    
    @IBAction func ChangeColor(_ sender: UISlider) {
        
        
        viColor.backgroundColor = UIColor(red: CGFloat(slRed.value), green: CGFloat(slGreen.value), blue: CGFloat(slBlue.value), alpha: 1.0)
    }
    
    
    
}
