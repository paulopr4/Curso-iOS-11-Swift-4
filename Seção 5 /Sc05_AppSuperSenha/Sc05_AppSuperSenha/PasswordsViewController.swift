//
//  PasswordsViewController.swift
//  Sc05_AppSuperSenha
//
//  Created by paulopr4 on 20/07/19.
//  Copyright © 2019 paulopr4. All rights reserved.
//

import UIKit

class PasswordsViewController: UIViewController {
    
    @IBOutlet weak var tvPasswords: UITextView!
    
    var numberOfCharacters: Int = 10
    var numberOfPasswords: Int = 1
    var useLetters: Bool!
    var useNumbers: Bool!
    var useCapitalLetteres: Bool!
    var useSpecialCharacters: Bool!
    
    var passwordGenerator: PasswordGenerator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      title = "Total de senhas: \(numberOfPasswords)"
        passwordGenerator = PasswordGenerator(numberOfCharacters: numberOfCharacters, useLetters: useLetters, useNumbers: useNumbers, useCapitalLetters: useCapitalLetteres, useSpecialCharacters: useSpecialCharacters)
        
        let passwords = passwordGenerator.generate(total: numberOfPasswords)
        
    generatePasswords()
    
    }
    func generatePasswords() {
        
        print("botão acionado generatePasswords")
        
        tvPasswords.scrollRangeToVisible(NSRange(location: 0, length: 0))
        tvPasswords.text = ""
        let passwords = passwordGenerator.generate(total: numberOfPasswords)
        for password in passwords {
            tvPasswords.text.append(password + "\n\n")
            
        }
        
    }
    
    
    
    @IBAction func btnGeneration(_ sender: UIButton) {
        generatePasswords()
        print("botão acionado btnGeneration")
    }
    
}
