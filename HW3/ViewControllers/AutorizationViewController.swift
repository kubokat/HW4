//
//  ViewController.swift
//  HW3
//
//  Created by Chernoskutob Vladislav on 26.10.2021.
//

import UIKit

class AutorizationViewController: UIViewController {

    @IBOutlet var userName: UITextField!
    @IBOutlet var password: UITextField!
    
    let user = UserModel.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (user.userName != userName.text) {
            showAlert(title: "Wrong data", message: "Incorrect username or password", field: userName)
        }
        
        if (user.password != password.text) {
            showAlert(title: "Wrong data", message: "Incorrect username or password", field: password)
        }
        
        let tabBarController = segue.destination as! UITabBarController
        
        if let viewControllers = tabBarController.viewControllers {
            for viewController in viewControllers {
                if let vc = viewController as? WelcomeViewController {
                    (vc.userNameValue, vc.userAgeValue, vc.userPhoneValue) = (user.name, user.age, user.phone)

                } else if let vc = viewController as? UINavigationController {
                    let moreVC = vc.topViewController as! MoreViewController
                    
                    (moreVC.userDescription, moreVC.userPhoto) = (user.userDescription, user.photo)
                }
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        userName.text = ""
        password.text = ""
    }
    
    @IBAction func forgot(_ sender: UIButton) {
        if (sender.tag == 0) {
            showAlert(title: "Forgot", message: "You user name: \(user.userName)")
        } else {
            showAlert(title: "Forgot", message: "You password: \(user.password)")
        }
    }
    
}

extension AutorizationViewController {
    private func showAlert(title: String, message: String, field: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            guard let textField = field else { return }
            
            textField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

