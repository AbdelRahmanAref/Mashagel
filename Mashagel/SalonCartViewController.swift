//
//  SalonCartViewController.swift
//  Mashagel
//
//  Created by AbdelRahman Aref on 3/5/19.
//  Copyright © 2019 AbdelRahman Aref. All rights reserved.
//

import UIKit
import iOSDropDown

class SalonCartViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var chooseEmployeetextField: DropDown!
    @IBOutlet weak var tableViewSalonCart: UITableView!
    @IBOutlet weak var popUpView: UIView!

    let tableViewCellId = "tableViewCartCellId"



    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewSalonCart.delegate = self
        tableViewSalonCart.dataSource = self
        tableViewSalonCart.rowHeight = 180
        // The list of array to display. Can be changed dynamically
        chooseEmployeetextField.optionArray = ["السبت", "الأحد", "الاتنين"]
        chooseEmployeetextField.textColor = #colorLiteral(red: 0.9312909842, green: 0.42910254, blue: 0.554305017, alpha: 1)
        //Its Id Values and its optional
        chooseEmployeetextField.optionIds = [1,2,3,4]
        // The the Closure returns Selected Index and String
        chooseEmployeetextField.didSelect{(selectedText , index ,id) in

        }

    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 15
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: tableViewCellId) as! SalonCartViewCell

//        cell.venosLabel.text = "فينوس بيوتي سنتر"
        cell.priceLabel.text = "500 ريال"
        cell.pridePackageLabel.text = "باكدج العروسة"
        cell.detail1Label.text = "قص شعر كامل بالطريقة المطلوبة"
        cell.Detail2Label.text = "غسيل شعر مع معالجة"
        cell.detail3Label.text = "ميكب سهرة بتركيب رموش"
        cell.timeTextField.optionArray = ["السبت", "الأحد", "الاتنين"]
        cell.employeeTextField.optionArray = ["احمد", "محمد", "مصطفي"]

//        cell.salonHomeitemLabel.text = homeItemArray[indexPath.section]
        cell.layoutMargins = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        cell.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        cell.layer.borderWidth = 0.2
        cell.layer.cornerRadius = 8
        cell.clipsToBounds = true



        return cell
    }

    @IBAction func reservationProceedBtn(_ sender: Any) {

    }
    @IBAction func confirmBtnTapped(_ sender: Any) {

//        self.view.alpha = 0.5
        self.view.addSubview(popUpView)
        popUpView.center = self.view.center
    }

    @IBAction func donePopOver(_ sender: Any) {
        self.popUpView.removeFromSuperview()
    }


}
