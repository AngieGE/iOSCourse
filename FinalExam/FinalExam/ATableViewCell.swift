//
//  ATableViewCell.swift
//  FinalExam
//
//  Created by Ariadna Angelica Guemes Estrada on 2019-08-10.
//  Copyright © 2019 Ariadna Angelica Guemes Estrada. All rights reserved.
//

import UIKit

class ATableViewCell: UITableViewCell {

    @IBOutlet weak var merchantName: UILabel!
    @IBOutlet weak var merchantAddress: UILabel!
    @IBOutlet weak var storeName: UILabel!
    @IBOutlet weak var storeImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
