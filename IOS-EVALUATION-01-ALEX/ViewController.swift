//
//  ViewController.swift
//  IOS-EVALUATION-01-ALEX
//
//  Created by Student00 on 01/06/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordVisibilityIcon: UIImageView!
    @IBOutlet weak var newsletterLabel: UILabel!
    @IBOutlet weak var newsletterSwitch: UISwitch!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        avatarImage.layer.borderWidth = 1.0
        avatarImage.layer.masksToBounds = false
        avatarImage.layer.borderColor = UIColor.white.cgColor
        avatarImage.layer.cornerRadius = avatarImage.frame.height / 2
        avatarImage.clipsToBounds = true
        
        welcomeLabel.text = "Bienvenue"
        welcomeLabel.font = .boldSystemFont(ofSize: 20)
        
        usernameTextField.placeholder = "Login"
        passwordTextField.placeholder = "Password"
        newsletterLabel.text = "Inscription à la newsletter"
        
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.layer.cornerRadius = 5
        

    }

    @IBAction func tapOnLogin(_ sender: Any) {
    }
    
}

