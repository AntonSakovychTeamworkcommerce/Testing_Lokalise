//
//  AppDelegate.swift
//  Testing_Lokalise
//
//  Created by User on 19.04.2022.
//

import UIKit
import Lokalise

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        Lokalise.shared.setProjectID("95323732625ffced37ca71.68533310", token:"efed56223c39c7754d122a1f35e98c94f425bace")
        Lokalise.shared.swizzleMainBundle()


        NotificationCenter.default.addObserver(forName: UIApplication.didBecomeActiveNotification, object: nil, queue: .main) { _ in
                   Lokalise.shared.checkForUpdates { (updated, errorOrNil) in
                       print("Updated: \(updated)\nError: \(String(describing: errorOrNil))")
                   }
               }
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {

        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {

    }
}

