//
//  NotificationViewController.swift
//  Mashagel
//
//  Created by AbdelRahman Aref on 3/4/19.
//  Copyright © 2019 AbdelRahman Aref. All rights reserved.
//

import UIKit

class NotificationViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let tableViewCellId = "tableViewCellId"

    @IBOutlet weak var tableView: UITableView!




    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: tableViewCellId) as! NotificationsTableViewCell
        cell.notificationDayLabel.text = "اليوم"
        cell.notificationDateLabel.text = "5:30م"
        cell.venosSalonLabel.text = "فينوس بيوتي صالون"
        cell.notificationReservationStatusLabel.text = "تم إلغاء طلب الحجز"
        cell.notificationImageType.image = UIImage(named: "notifications_unselected.png")!
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
