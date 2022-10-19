//
//  ViewController.swift
//  SignUpAlert
//
//  Created by Selçuk Arıöz on 9.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var confirmPasswordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        
        if usernameText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Username not found")
        }else if passwordText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Password not found")
        }else if confirmPasswordText.text != passwordText.text{
            makeAlert(titleInput: "Error", messageInput: "Passwords do not match")
        }else {
            makeAlert(titleInput: "Success", messageInput: "Singed up successfully")
        }
    }
    func makeAlert(titleInput: String, messageInput: String){
        let usernameAlert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let alertButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
        
        usernameAlert.addAction(alertButton)
        self.present(usernameAlert, animated: true, completion: nil)
    }
}

