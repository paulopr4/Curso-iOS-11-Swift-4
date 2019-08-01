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
    
    let config = Configuration.shared

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(forName: NSNotification.Name(rawValue: "Refresh") , object: nil, queue: nil) { (Notification) in
            self.formatView()
        }

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        formatView()
    }
    
    func formatView() {
        swAutorefresh.setOn(config.autorefresh, animated: false)
        slTimeInterval.setValue(Float(config.timeInverval), animated: false)
        scColorScheme.selectedSegmentIndex = config.colorScheme
        changeTimeInvervalLlabel(with: config.timeInverval)
        print("ativado formatView ")
    }
    
    func changeTimeInvervalLlabel(with value: Double) {
        lbTimeInterval.text = "Mudar após \(value) segundos"
        print("ativado changeTimeInvervalLlabel ")
        
    }
    
    @IBAction func changeAutorefresh(_ sender: UISwitch) {
        config.autorefresh = sender.isOn
        
    }
    @IBAction func changeTimeInterval(_ sender: UISlider) {
        let value = Double(round(sender.value))
        changeTimeInvervalLlabel(with: value)
        config.timeInverval = value
         print("ativado changeTimeInterval ")
        
        
    }
    
    @IBAction func changeColorScheme(_ sender: UISegmentedControl) {
        config.colorScheme = sender.selectedSegmentIndex
         print("ativado changeColorScheme ")
    }
    

}
