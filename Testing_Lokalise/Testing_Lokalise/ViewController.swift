//
//  ViewController.swift
//  Testing_Lokalise
//
//  Created by User on 19.04.2022.
//

import UIKit

final class ViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet private weak var lblTitle: UILabel!
    @IBOutlet private weak var lblSubtitle: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        updateUserText()

        NotificationCenter.default.addObserver(
            self,
            selector: #selector(updateUserInterface),
            name: NSNotification.Name.LokaliseDidUpdateLocalization,
            object: nil
        )
    }

    @objc func updateUserInterface() {
        updateUserText()
    }

    func updateUserText() {
        lblTitle.text = NSLocalizedString("title_key", comment: "comment")
        lblSubtitle.text = NSLocalizedString("subtitle_key", comment: "comment")
    }
}

