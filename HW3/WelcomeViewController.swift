//
//  WelcomeViewController.swift
//  HW3
//
//  Created by Chernoskutob Vladislav on 26.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var userNameLabel: UILabel!
    var userNameValue: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        userNameLabel.text = userNameValue
    }
    
    @IBAction func logOut() {
        dismiss(animated: true)
    }
    
}
