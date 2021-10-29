//
//  WelcomeViewController.swift
//  HW3
//
//  Created by Chernoskutob Vladislav on 26.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var userAgeLabel: UILabel!
    @IBOutlet var userPhoneLabel: UILabel!
    
    
    var userNameValue: String!
    var userPhoneValue: String!
    var userAgeValue: Int!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ages = String(userAgeValue) + " ages"
        
        (userNameLabel.text, userAgeLabel.text, userPhoneLabel.text) = (userNameValue, ages, userPhoneValue)

    }
}
