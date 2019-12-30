//
//  RegisterViewController.swift
//  decide
//
//  Created by Uditi Sharma on 12/21/19.
//  Copyright © 2019 Uditi Sharma. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
    @IBAction func registerButtonPressed(_ sender: Any) {
        
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            if error != nil {
                print("error")
            }else{
                print("success!")
                self.performSegue(withIdentifier: "registerToHome", sender: self)
            }
        }
        
    }
    
}


