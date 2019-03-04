//
//  NotificationsTableViewCell.swift
//  Mashagel
//
//  Created by AbdelRahman Aref on 3/4/19.
//  Copyright © 2019 AbdelRahman Aref. All rights reserved.
//

import UIKit

class NotificationsTableViewCell: UITableViewCell {

    
    @IBOutlet weak var notificationDayLabel: UILabel!
    @IBOutlet weak var venosSalonLabel: UILabel!
    @IBOutlet weak var notificationDateLabel: UILabel!
    @IBOutlet weak var notificationReservationStatusLabel: UILabel!
    @IBOutlet weak var notificationImageType: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
