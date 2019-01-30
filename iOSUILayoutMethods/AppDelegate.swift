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
        xibViewController.title = "XIB"
        
        let text = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
        
        let layoutAnchorViewController = LayoutAnchorViewController(image: UIImage(named: "image03"), text: text)
        layoutAnchorViewController.title = "LayoutAnchor"
        
        let pureLaoutViewController = PureLaoutViewController(image: UIImage(named: "image04"), text: text)
        pureLaoutViewController.title = "PureLaout"
        
        let snapKitViewController = SnapKitViewController(image: UIImage(named: "image05"), text: text)
        snapKitViewController.title = "SnapKit"
        
        let viewControllers: [UIViewController] = [
            storyboardViewController,
            xibViewController,
            layoutAnchorViewController,
            pureLaoutViewController,
            snapKitViewController
            ].compactMap { $0 }
            .map {
                $0.tabBarItem = UITabBarItem(title: $0.title, image: UIImage(named: "star"), tag: 0)
                let navigationController = UINavigationController(rootViewController: $0)
                return navigationController
        }
        
        let tabBarController = UITabBarController()
        tabBarController.setViewControllers(viewControllers, animated: false)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        return true
    }
}

