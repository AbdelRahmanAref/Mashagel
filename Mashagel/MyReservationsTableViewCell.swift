//
//  MyReservationsTableViewCell.swift
//  Mashagel
//
//  Created by AbdelRahman Aref on 3/6/19.
//  Copyright © 2019 AbdelRahman Aref. All rights reserved.
//

import UIKit

class MyReservationsTableViewCell: UITableViewCell {

    @IBOutlet weak var hairCutLabel: UILabel!
    @IBOutlet weak var confirmationStatusLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var navigationImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

