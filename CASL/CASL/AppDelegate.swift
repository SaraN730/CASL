//
//  AppDelegate.swift
//  CASL
//
//  Created by Garage on 11/28/18.
//  Copyright © 2018 Garage. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let vc: MainViewController = StoryBoard.main.createViewController()
        let navvy = UINavigationController(rootViewController: vc)
        
        window?.rootViewController = navvy
        window?.makeKeyAndVisible()
        
        return true
    }
}

