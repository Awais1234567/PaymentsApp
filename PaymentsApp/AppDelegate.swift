//
//  AppDelegate.swift
//  PaymentsApp
//
//  Created by Awais Khalid on 08/07/2020.
//  Copyright © 2020 Awais Khalid. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var navController: UINavigationController!


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        presentController()

        return true
    }
    func presentController(){
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()

        let controller = LoginController()
        navController = UINavigationController(rootViewController: controller)
        navController.setNavigationBarHidden(true, animated: true)
        window?.rootViewController = navController
    }
}
