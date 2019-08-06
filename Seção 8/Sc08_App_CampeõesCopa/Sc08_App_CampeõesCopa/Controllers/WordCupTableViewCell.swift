//
//  WordCupTableViewCell.swift
//  Sc08_App_CampeõesCopa
//
//  Created by paulopr4 on 06/08/19.
//  Copyright © 2019 paulopr4. All rights reserved.
//

import UIKit

class WordCupTableViewCell: UITableViewCell {
    
    

    @IBOutlet weak var lbYear: UILabel!
    @IBOutlet weak var ivWinner: UIImageView!
    @IBOutlet weak var ivVice: UIImageView!
    @IBOutlet weak var lbWinner: UILabel!
    @IBOutlet weak var lbVice: UILabel!
    @IBOutlet weak var lbCountry: UILabel!
    @IBOutlet weak var lbViceScore: UILabel!
    @IBOutlet weak var lbWinnerScore: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func prepare(with cup: WorldCup) {
        lbYear.text = "\(cup.year)"
        ivWinner.image = UIImage(named: cup.winner)
        ivVice.image = UIImage(named: cup.vice)
        lbWinner.text = cup.winner
        lbVice.text = cup.winner
        lbCountry.text = cup.winnerScores
        lbViceScore.text = cup.viceScore
    }

}
