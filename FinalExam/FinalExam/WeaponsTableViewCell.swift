//
//  WeaponsTableViewCell.swift
//  FinalExam
//
//  Created by Ariadna Angelica Guemes Estrada on 2019-08-10.
//  Copyright © 2019 Ariadna Angelica Guemes Estrada. All rights reserved.
//

import UIKit

class WeaponsTableViewCell: UITableViewCell {

    @IBOutlet weak var weaponName: UILabel!
    @IBOutlet weak var weaponCost: UILabel!
    @IBOutlet weak var weaponDamage: UILabel!
    @IBOutlet weak var weaponIcon: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
