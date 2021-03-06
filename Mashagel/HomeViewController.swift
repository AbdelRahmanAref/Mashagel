//
//  HomeViewController.swift
//  Mashagel
//
//  Created by AbdelRahman Aref on 3/3/19.
//  Copyright © 2019 AbdelRahman Aref. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    let homeCellId = "homeCell"
    let homeItemArray = ["إضافة موظف", "أوقات الدوام", "الطلبات الواردة", "بيانات السنتر"]
    let homeItemIconsArray = ["dwamTime.png", "addEmployer.png", "centerData.png", "centerDetails.png"]

    @IBOutlet weak var collectionView: UICollectionView!

    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!

    private let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0,bottom: 50.0,right: 20.0)


    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        flowLayout.scrollDirection = .vertical
        flowLayout.minimumLineSpacing = 10
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.sectionInset = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)


        // Do any additional setup after loading the view.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }

//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 4
//    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: homeCellId, for: indexPath) as! HomeCollectionViewCell
        cell.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        cell.layer.borderWidth = 0.2
        cell.layer.cornerRadius = 8
        cell.clipsToBounds = true

        cell.homeLabel.text = homeItemArray[indexPath.row]
        cell.homeIcon.image = UIImage(named: "\(homeItemIconsArray[indexPath.row])")
        return cell
    }



}

