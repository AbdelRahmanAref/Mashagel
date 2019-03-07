//
//  SalonHomeViewCell.swift
//  Mashagel
//
//  Created by AbdelRahman Aref on 3/5/19.
//  Copyright © 2019 AbdelRahman Aref. All rights reserved.
//

import UIKit

class SalonHomeViewCell: UITableViewCell {


    @IBOutlet weak var salonHomeitemLabel: UILabel!

    @IBOutlet weak var salonHomeArrow: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
