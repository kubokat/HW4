//
//  ViewController.swift
//  HW3
//
//  Created by Chernoskutob Vladislav on 26.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userName: UITextField!
    @IBOutlet var password: UITextField!
    
    let savedUserName = "UserName"
    let savedPassword = "password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (savedUserName != userName.text) {
            showAlert(title: "Wrong data", message: "Incorrect username or password", field: userName)
        }
        
        if (savedPassword != password.text) {
            showAlert(title: "Wrong data", message: "Incorrect username or password", field: password)
        }
        
        guard let vc = segue.destination as? WelcomeViewController else { return }
        
        vc.userNameValue = userName.text
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
            showAlert(title: "Forgot", message: "You user name: \(savedUserName)")
        } else {
            showAlert(title: "Forgot", message: "You password: \(savedPassword)")
        }
    }
    
}

extension ViewController {
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

