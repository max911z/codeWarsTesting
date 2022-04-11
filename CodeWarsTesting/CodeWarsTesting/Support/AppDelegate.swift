//
//  AppDelegate.swift
//  CodeWarsTesting
//
//  Created by Максим Неверовский on 08.04.2022.
//

import UIKit
import CoreData

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let navController = UINavigationController()
        let startVC = HomeViewController();
        navController.pushViewController(startVC, animated: false);
        window?.rootViewController = navController;
        window?.makeKeyAndVisible();
        return true
    }

   

}

