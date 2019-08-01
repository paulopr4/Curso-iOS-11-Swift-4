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
    
    let config = Configuration.shared
    
    
    var quotesManager = QuotesManager()
    var timer : Timer?
    
    
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
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        prepareQuote()
    }
    
    func formatView() {
        view.backgroundColor = config.colorScheme == 0 ? .white : UIColor(red: 156/255.0, green: 68.0/255.0, blue: 15.0/255.0, alpha: 1.0)
        lbQuote.textColor = config.colorScheme == 0 ? . black : .white
        lbAuthor.textColor = config.colorScheme == 0 ? UIColor(red: 192.0/255.0, green: 96/255.0, blue: 49.0/255.0, alpha: 1.0) : .yellow
        prepareQuote()
        print("ativado formatView")
        
    }
    
    func  prepareQuote() {
        timer?.invalidate()
        if config.autorefresh {
            timer = Timer.scheduledTimer(withTimeInterval: config.timeInverval, repeats: true) { (timer) in
                self.showRandomQuote()
            }
        }
        showRandomQuote()
    }
    
    func showRandomQuote() {
        let quote = quotesManager.getRandomQuote()
        lbQuote.text = quote.quote
        lbAuthor.text = quote.author
        ivPhoto.image = UIImage(named: quote.image)
        ivPhoto.image = ivPhoto.image
        
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
