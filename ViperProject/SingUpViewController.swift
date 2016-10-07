//
//  SingUpViewController.swift
//  ViperProject
//
//  Created by admin on 07.10.16.
//  Copyright © 2016 Mozi. All rights reserved.
//

import UIKit

class SingUpViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    var realmModel = RealmModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func singUpButton(_ sender: AnyObject) {
        if emailTextField.text != nil || passwordTextField.text != nil {
            realmModel.writeInDB(userName: nameTextField.text!, password: passwordTextField.text!, email: emailTextField.text!)
        }else{
            let alert = UIAlertController(title: "ERROR", message: "Please enter data", preferredStyle: .alert)
            let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(ok)
            self.present(alert, animated: true, completion: nil)
        }
     }
    
}