//
//  PotionsTableViewCell.swift
//  FinalExam
//
//  Created by Ariadna Angelica Guemes Estrada on 2019-08-10.
//  Copyright © 2019 Ariadna Angelica Guemes Estrada. All rights reserved.
//

import UIKit

class PotionsTableViewCell: UITableViewCell {

    @IBOutlet weak var potionName: UILabel!
    @IBOutlet weak var potionCost: UILabel!
    @IBOutlet weak var potionIsPoisonous: UILabel!
    @IBOutlet weak var potionIcon: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
