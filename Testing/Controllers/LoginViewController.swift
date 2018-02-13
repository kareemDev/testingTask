//
//  ViewController.swift
//  Testing
//
//  Created by Kareem Mohammed on 2/13/18.
//  Copyright © 2018 Testing. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    
    var viewModel: LoginViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        viewModel = LoginViewModel()
        
    }

    //MARK:- IBActions
    @IBAction func loginAction(_ sender: Any) {
        if (passwordTextField.text!.count) > 0 && (emailTextField.text!.count > 0) {
         
            showAlert(success: viewModel.loginSuccess(email: emailTextField.text, password: passwordTextField.text))
           
        } else {
            showAlert(success: false)
        }
    }
    
    func showAlert(success: Bool) {
        var alertTitle: String
        var alertMessage: String

        if success {
            alertTitle = "Login Success"
            alertMessage = "You've loggedin successfully!"
        } else {
            alertTitle = "Error"
            alertMessage = "Please enter a correct password!"
        }
        let errorAlert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        errorAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(errorAlert, animated: true, completion: nil)
    }
    
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        if textField == passwordTextField {
            loginAction(UIButton(type: .custom))
        }
        return true
    }
}
