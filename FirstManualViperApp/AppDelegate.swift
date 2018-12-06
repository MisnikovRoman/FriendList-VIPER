//
//  AppDelegate.swift
//  FirstManualViperApp
//
//  Created by MisnikovRoman on 02/12/2018.
//  Copyright © 2018 MisnikovRoman. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let friendListVC: UIViewController = FriendListRouter.createModule()
        let navigationController = UINavigationController(rootViewController: friendListVC)
        
        window?.rootViewController = navigationController
        
        return true
    }
}

