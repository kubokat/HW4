//
//  DescriptionViewController.swift
//  HW3
//
//  Created by Chernoskutob Vladislav on 29.10.2021.
//

import UIKit

class DescriptionViewController: UIViewController {
    
    var userDescription: String?
    var userPhoto: String?
    var screenTitle: String?
    
    @IBOutlet var TextField: UITextView!
    @IBOutlet var PhotoField: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = screenTitle
        
        if let text = userDescription {
            PhotoField.isHidden = true
            TextField.text = text
        } else if let image = userPhoto {
            TextField.isHidden = true
            let imageUrl: URL = URL(string: image)!
            PhotoField.load(url: imageUrl)
        }
    }
    
    

}

extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
