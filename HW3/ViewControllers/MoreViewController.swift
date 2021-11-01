//
//  MoreViewController.swift
//  HW3
//
//  Created by Chernoskutob Vladislav on 29.10.2021.
//

import UIKit

class MoreViewController: UIViewController {
    
    var userDescription: String!
    var userPhoto: String!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? DescriptionViewController else { return }
        
        guard let buttonSender = sender as? UIButton else { return }
                
        if let header = buttonSender.titleLabel {
            vc.screenTitle = header.text
        }

        if buttonSender.tag == 1 {
            vc.userPhoto = userPhoto
        } else {
            vc.userDescription = userDescription
        }

    }
    
    

}
