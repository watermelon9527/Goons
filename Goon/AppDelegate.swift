//
//  AppDelegate.swift
//  Goon
//
//  Created by nono chan  on 2022/3/28.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .white
        let nav = UINavigationController(
            rootViewController: FirstViewController())
        window?.rootViewController = nav
        
        return true
    }
    
}

