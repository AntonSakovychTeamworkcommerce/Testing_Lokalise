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

        Lokalise.shared.setProjectID("68898370625ff183120249.54418807", token:"f408c9fc6449390126de5e8e5236248e7f4cfa4c")
        Lokalise.shared.swizzleMainBundle()


        NotificationCenter.default.addObserver(forName: UIApplication.didBecomeActiveNotification, object: nil, queue: .main) { _ in
                   Lokalise.shared.checkForUpdates { (updated, errorOrNil) in
                       print("Updated: \(updated)\nError: \(String(describing: errorOrNil))")
                   }
               }


        return true
    }

//
//    func applicationDidBecomeActive(_ application: UIApplication) {
//        Lokalise.shared.checkForUpdates { (updated, errorOrNil) in
//            print("Updated: \(updated)\nError: \(String(describing: errorOrNil))")
//        }
//    }


    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

