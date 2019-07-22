//
//  ResultViewController.swift
//  App_SwiftQuiz
//
//  Created by paulopr4 on 15/07/19.
//  Copyright © 2019 paulopr4. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var lbAnswerd: UILabel!
    @IBOutlet weak var lbCorrect: UILabel!
    @IBOutlet weak var lbWrong: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    var totalCorrectAnswers: Int = 0
    var totalAnwers: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbAnswerd.text = "Perguntas respondidas: \(totalAnwers)"
        lbCorrect.text = "Perguntas corretas:   \(totalAnwers)"
        lbWrong.text = "Perguntas erradas: \(totalAnwers - totalCorrectAnswers)"
        
        let score = totalCorrectAnswers*100/totalAnwers
        lbScore.text = "\(score)"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
