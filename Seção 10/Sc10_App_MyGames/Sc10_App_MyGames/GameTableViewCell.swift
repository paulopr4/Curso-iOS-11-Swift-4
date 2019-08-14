//
//  GameTableViewCell.swift
//  Sc10_App_MyGames
//
//  Created by paulopr4 on 11/08/19.
//  Copyright © 2019 paulopr4. All rights reserved.
//
// 113> trazendo lista de jogos cadastrados

import UIKit

class GameTableViewCell: UITableViewCell {
    
    @IBOutlet weak var IvCover: UIImageView!
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var lbConsole: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    func prepare(with game: Game) {
        lbTitle.text = game.title ?? ""
        lbConsole.text = game.console?.name ?? ""
        if let image = game.cover as? UIImage {
            IvCover.image = image
        } else {
            IvCover.image = UIImage(named: "noCover")
        }
    }

}
