////
////  TopBarViewController.swift
////  Mashagel
////
////  Created by AbdelRahman Aref on 3/5/19.
////  Copyright © 2019 AbdelRahman Aref. All rights reserved.
////
//
import UIKit
import CDAlertView
class TopBarViewController: UIViewController {

    @IBOutlet var evaluationPopOver: UIView!
    @IBAction func donPopOver(_ sender: Any) {
    }

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    func showAlert(){
        let alert = CDAlertView(title: "عفواً", message: "لا يمكنك أخذ موعد إلا بعد تسجيل الدخول", type: .custom(image:UIImage(named: "alertLogo.png")!))
        alert.titleTextColor = #colorLiteral(red: 0.9312909842, green: 0.42910254, blue: 0.554305017, alpha: 1)
        alert.messageTextColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        alert.alertBackgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)

        let cancelAction = CDAlertViewAction(title: "إنشاء حساب")
        cancelAction.buttonTextColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        alert.add(action: cancelAction)

        let doneAction = CDAlertViewAction(title: "تسجيل الدخول")
        doneAction.buttonBackgroundColor = #colorLiteral(red: 0.9312909842, green: 0.42910254, blue: 0.554305017, alpha: 1)
        doneAction.buttonTextColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        alert.add(action: doneAction)

        alert.show()
    }

    @IBAction func btnTapped(_ sender: Any) {
//        showAlert()
        self.view.addSubview(evaluationPopOver)
        evaluationPopOver.center = self.view.center
        
    }

    @IBAction func donePopOverTapped(_ sender: Any) {
        self.evaluationPopOver.removeFromSuperview()
    }
    @IBAction func closePopOverTapped(_ sender: Any) {
        self.evaluationPopOver.removeFromSuperview()
    }

}
