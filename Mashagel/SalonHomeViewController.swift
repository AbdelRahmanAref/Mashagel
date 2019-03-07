//
//  SalonHomeViewController.swift
//  Mashagel
//
//  Created by AbdelRahman Aref on 3/5/19.
//  Copyright © 2019 AbdelRahman Aref. All rights reserved.
//

import UIKit

class SalonHomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let tableViewCellId = "salonHomeViewCell"

    @IBOutlet weak var tableView: UITableView!

    let homeItemArray = ["إضافة موظف", "أوقات الدوام", "الطلبات الواردة", "بيانات السنتر"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }


    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }



    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 15
    }

    //MARK:- Test




    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: tableViewCellId) as! SalonHomeViewCell
        cell.salonHomeitemLabel.text = homeItemArray[indexPath.section]
        cell.layoutMargins = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        cell.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        cell.layer.borderWidth = 0.2
        cell.layer.cornerRadius = 8
        cell.clipsToBounds = true
        

        return cell
    }





}
