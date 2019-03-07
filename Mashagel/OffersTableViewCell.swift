//
//  OffersTableViewCell.swift
//  Mashagel
//
//  Created by AbdelRahman Aref on 3/6/19.
//  Copyright © 2019 AbdelRahman Aref. All rights reserved.
//

import UIKit

class OffersTableViewCell: UITableViewCell {


    @IBOutlet weak var topImage: UIImageView!
    @IBOutlet weak var reserveBtn: UIButton!
    
    @IBOutlet weak var mainPackageLabel: UILabel!
    @IBOutlet weak var packageDetail1: UILabel!
    @IBOutlet weak var packageDetail2: UILabel!
    @IBOutlet weak var packageDetail3: UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
