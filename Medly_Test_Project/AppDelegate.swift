//
//  AppDelegate.swift
//  Medly_Test_Project
//
//  Created by Lee Pollard on 4/11/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        window.rootViewController = CountriesWireframe().buildCountriesViewController()
        window.makeKeyAndVisible()
        return true
    }
}

