//
//  HelloViewController.swift
//  Autorization
//
//  Created by Матвей Авдеев on 09.05.2023.
//

import UIKit

var userName = ""

final class HelloViewController: UIViewController {
    
    let clearUserName = ""
    let clearPassword = ""
    
    @IBOutlet var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        helloLabel.text = userName
        
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor(red: 0.93, green: 0.61, blue: 0.83, alpha: 1.0).cgColor,
            UIColor(red: 0.81, green: 0.96, blue: 0.98, alpha: 1.0).cgColor,
            UIColor(red: 1.0, green: 0.96, blue: 0.75, alpha: 1.0).cgColor
        ]

        view.layer.insertSublayer(gradientLayer, at: 0)
        
    }
    
}
