//
//  ViewController.swift
//  IOS-EVALUATION-01-ALEX
//
//  Created by Student00 on 01/06/2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var newsletterLabel: UILabel!
    @IBOutlet weak var newsletterSwitch: UISwitch!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var passwordVisibilityButton: UIButton!
    @IBOutlet var openEyeImage = UIImage (named: "eye_on_icon")
    @IBOutlet var closedEyeImage = UIImage (named: "eye_off_icon")
    var iconClick = true
    
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
        
        passwordVisibilityButton.setBackgroundImage(openEyeImage, for: .normal)
        passwordTextField.isSecureTextEntry = true
        
        usernameTextField.delegate = self
        passwordTextField.delegate = self
        
        let closeKeyboardTap = UITapGestureRecognizer(target: self, action: #selector(closeKeyboard))
        view.addGestureRecognizer(closeKeyboardTap)
        
        usernameTextField.keyboardType = .emailAddress
        passwordTextField.keyboardType = .URL

    }
    // exit keyboard methods
    @objc func closeKeyboard() {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return true
    }

    //password visibility + icon management
    @IBAction func imageTapped(_ sender: Any) {
    
        if iconClick == true {
            passwordTextField.isSecureTextEntry = false
            passwordVisibilityButton.setBackgroundImage(closedEyeImage, for: .normal)
        } else {
            passwordTextField.isSecureTextEntry = true
            passwordVisibilityButton.setBackgroundImage(openEyeImage, for: .normal)
        }
        iconClick = !iconClick
    }
    
    @IBAction func tapOnLogin(_ sender: Any) {
    }
    
}

