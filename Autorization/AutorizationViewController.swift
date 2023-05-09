//
//  ViewController.swift
//  Autorization
//
//  Created by Матвей Авдеев on 09.05.2023.
//

import UIKit

final class AutorizationViewController: UIViewController {
    
    // MARK: IBOutlet
    
    @IBOutlet var eyeOutlet: UIButton!
    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var userNameTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passwordTF.rightView = eyeOutlet
        passwordTF.rightViewMode = .always
        
        passwordTF.isSecureTextEntry = true
        
    }
    
    // MARK: IBActions
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        
        guard let helloVC = segue.source as? HelloViewController else { return }
        
        userNameTF.text = helloVC.clearUserName
        passwordTF.text = helloVC.clearPassword
        
        passwordTF.isSecureTextEntry = true
        
    }
  
    @IBAction func eyeAction() {
        passwordTF.isSecureTextEntry = !passwordTF.isSecureTextEntry
    }
    
    @IBAction func logInButton(_ sender: UIButton) {
        
        if userNameTF.text == "Matvei" && passwordTF.text == "Password" && sender.tag == 0 {
            userName = "Welcome, \(userNameTF.text ?? "")"
            
        } else if  userNameTF.text != "Matvei" || passwordTF.text != "Password" && sender.tag == 0 {
            showAlert(whithTitle: "Invalid login or password", andMessage: "Plese, enter correct login and password")
            passwordTF.text = ""
            
        }
        
        if sender.tag == 1 {
            showAlert(whithTitle: "Oop!🤔", andMessage: "Your name is Matvei")
            
        } else if sender.tag == 2 {
            showAlert(whithTitle: "Oop!🤭", andMessage: "Your password is Password")
        }
    }
    
}

// MARK: Extensions

extension AutorizationViewController {
    
    private func showAlert(whithTitle title: String, andMessage message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
