//
//  MyReservationsViewController.swift
//  Mashagel
//
//  Created by AbdelRahman Aref on 3/6/19.
//  Copyright © 2019 AbdelRahman Aref. All rights reserved.
//

import UIKit

class MyReservationsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }


    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myReservaionsCellId") as! MyReservationsTableViewCell

        cell.hairCutLabel.text = "قص شعر كامل"
        cell.confirmationStatusLabel.text = "مؤكد"
        cell.priceLabel.text = "500 ريال"
        cell.navigationImage.image = #imageLiteral(resourceName: "arrowPinkLeft")

        cell.layoutMargins = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        cell.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        cell.layer.borderWidth = 0.2
        cell.layer.cornerRadius = 8
        cell.clipsToBounds = true
        return cell
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 85

    }
    

}
