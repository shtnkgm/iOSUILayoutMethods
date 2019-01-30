//
//  AppDelegate.swift
//  iOSUILayoutMethods
//
//  Created by Shota Nakagami on 2019/01/30.
//  Copyright © 2019 Shota Nakagami. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let storyboard = UIStoryboard(name: "StoryboardViewController", bundle: nil)
        let storyboardViewController = storyboard.instantiateInitialViewController()
        
        let xibViewController = XIBViewController()
        xibViewController.tabBarItem = UITabBarItem(title: "XIB", image: UIImage(named: "star"), tag: 0)
        
        let viewControllers = [storyboardViewController, xibViewController].compactMap { $0 }
        let tabBarController = UITabBarController()
        tabBarController.setViewControllers(viewControllers, animated: false)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        return true
    }
}

