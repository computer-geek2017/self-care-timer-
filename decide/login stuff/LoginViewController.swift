//
//  LoginViewController.swift
//  decide
//
//  Created by Uditi Sharma on 12/21/19.
//  Copyright © 2019 Uditi Sharma. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    
    
    @IBAction func loginButtonPresssed(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTF.text!, password: passwordTF.text!) { (user, error) in
            
            if error != nil {
                print(error!)
            } else {
                print("Log in successful!")
                
                
                self.performSegue(withIdentifier: " loginToHome", sender: self)
            }
            
        }
    }
}
