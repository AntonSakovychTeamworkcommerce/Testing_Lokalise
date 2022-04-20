//
//  ViewController.swift
//  Testing_Lokalise
//
//  Created by User on 19.04.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


        let test =  NSLocalizedString("welcome_screen_title", comment: "comment")

        let test1 =  NSLocalizedString("login_button", comment: "comment")

        NotificationCenter.default.addObserver(
            self,
            selector: #selector(updateUserInterface),
            name: NSNotification.Name.LokaliseDidUpdateLocalization,
            object: nil
        )
    }

    @objc func updateUserInterface() {
        // Update your interface in Swift
    }
}

