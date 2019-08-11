//
//  BardSongsTableViewCell.swift
//  FinalExam
//
//  Created by Ariadna Angelica Guemes Estrada on 2019-08-10.
//  Copyright © 2019 Ariadna Angelica Guemes Estrada. All rights reserved.
//

import UIKit

class BardSongsTableViewCell: UITableViewCell {

    @IBOutlet weak var bardArtist: UILabel!
    @IBOutlet weak var bardTitle: UILabel!
    @IBOutlet weak var bardLengthSeconds: UILabel!
    @IBOutlet weak var bardIsWickedJoungle: UILabel!
    @IBOutlet weak var bardCost: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
