//
//  AppDelegate.swift
//  Mashagel
//
//  Created by AbdelRahman Aref on 3/3/19.
//  Copyright © 2019 AbdelRahman Aref. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let navigationBarAppearace = UINavigationBar.appearance()

        navigationBarAppearace.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationBarAppearace.barTintColor = #colorLiteral(red: 0.9312909842, green: 0.42910254, blue: 0.554305017, alpha: 1)

        // change navigation item title color
        navigationBarAppearace.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]

        return true
    }



}

