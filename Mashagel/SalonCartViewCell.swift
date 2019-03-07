//
//  SalonCartViewCell.swift
//  Mashagel
//
//  Created by AbdelRahman Aref on 3/6/19.
//  Copyright © 2019 AbdelRahman Aref. All rights reserved.
//

import UIKit
import iOSDropDown

class SalonCartViewCell: UITableViewCell {
    @IBOutlet weak var venosLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var pridePackageLabel: UILabel!
    @IBOutlet weak var detail1Label: UILabel!
    @IBOutlet weak var Detail2Label: UILabel!
    @IBOutlet weak var detail3Label: UILabel!
    @IBOutlet weak var employeeTextField: DropDown!
    @IBOutlet weak var timeTextField: DropDown!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
