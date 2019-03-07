//
//  DetailedAdressViewController.swift
//  Mashagel
//
//  Created by AbdelRahman Aref on 3/6/19.
//  Copyright © 2019 AbdelRahman Aref. All rights reserved.
//

import UIKit

class DetailedAdressViewController: UIViewController {


    @IBOutlet weak var detailedAdressTextField: UITextField!{
        didSet {
            detailedAdressTextField.tintColor = UIColor.lightGray
            detailedAdressTextField.setIcon(#imageLiteral(resourceName: "location_gray"))
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}
extension UITextField {
    func setIcon(_ image: UIImage) {
        let iconView = UIImageView(frame:
            CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame:
            CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
}
