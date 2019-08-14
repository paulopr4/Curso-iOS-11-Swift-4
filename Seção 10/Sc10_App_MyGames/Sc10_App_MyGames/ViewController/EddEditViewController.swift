//
//  EddEditViewController.swift
//  Sc10_App_MyGames
//
//  Created by paulopr4 on 10/08/19.
//  Copyright © 2019 paulopr4. All rights reserved.
//

import UIKit

class EddEditViewController: UIViewController {
    
    @IBOutlet weak var tfTitle: UITextField!
    @IBOutlet weak var tfConsole: UITextField!
    @IBOutlet weak var dpReleaseDate: UIDatePicker!
    @IBOutlet weak var btAddEdit: UIButton!
    @IBOutlet weak var btCover: UIButton!
    @IBOutlet weak var ivCover: UIImageView!
    
    var game: Game!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func AddEditCover(_ sender: UIButton) {
        
    }
    
    @IBAction func addEditGame(_ sender: UIButton) {
        print("função ativada addEditGame ")
        if game == nil {
            game = Game(context: context)
        }
        game.title = tfTitle.text
        game.reaseDate = dpReleaseDate.date
        do {
            try context.save()
        }catch{
            
            print(error.localizedDescription)
        }
        navigationController?.popViewController(animated: true)
        
    }
    
}

