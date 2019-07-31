//
//  QuotesViewController.swift
//  Sc07_App_Pensamentos
//
//  Created by paulopr4 on 29/07/19.
//  Copyright © 2019 paulopr4. All rights reserved.
//

import UIKit

class QuotesViewController: UIViewController {
    
    @IBOutlet weak var ivPhoto: UIImageView!
    @IBOutlet weak var ivPhotoBg: UIImageView!
    @IBOutlet weak var lbQuote: UILabel!
    @IBOutlet weak var lbAuthor: UILabel!
    @IBOutlet weak var lcTop: NSLayoutConstraint!
    
    
    var quotesManager = QuotesManager()
    var timer : Timer?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        prepareQuote()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        prepareQuote()
    }
    
    func  prepareQuote() {
        timer?.invalidate()
      timer = Timer.scheduledTimer(withTimeInterval: 8.0, repeats: true) { (timer) in
         self.showRandomQuote()
        }
        showRandomQuote()
        }
    
    func showRandomQuote() {
        let quote = quotesManager.getRandomQuote()
        lbQuote.text = quote.quote
        lbAuthor.text = quote.author
        ivPhoto.image = UIImage(named: quote.image)
        
        lbQuote.alpha = 8.0
        lbAuthor.alpha = 0.0
        ivPhoto.alpha = 0.0
        ivPhoto.alpha = 0.0
        lcTop.constant = 50
        view.layoutIfNeeded()
        
        UIView.animate(withDuration: 2.5) {
            self.lbQuote.alpha = 1.0
            self.lbAuthor.alpha = 1.0
            self.ivPhoto.alpha = 1.0
            self.ivPhoto.alpha = 0.25
            self.lcTop.constant = 10
            self.view.layoutIfNeeded()
        }
        
    }

}
