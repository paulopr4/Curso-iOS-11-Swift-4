//
//  SettingViewController.swift
//  Sc07_App_Pensamentos
//
//  Created by paulopr4 on 29/07/19.
//  Copyright © 2019 paulopr4. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {
    
    @IBOutlet weak var swAutorefresh: UISwitch!
    @IBOutlet weak var slTimeInterval: UISlider!
    @IBOutlet weak var scColorScheme: UISegmentedControl!
    @IBOutlet weak var lbTimeInterval: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func changeAutorefresh(_ sender: UISwitch) {
        
    }
    @IBAction func changeTimeInterval(_ sender: UISlider) {
        
    }
    
    @IBAction func changeColorScheme(_ sender: UISegmentedControl) {
    }
    

}
