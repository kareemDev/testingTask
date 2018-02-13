//
//  LoginViewModel.swift
//  Testing
//
//  Created by Kareem Mohammed on 2/13/18.
//  Copyright © 2018 Testing. All rights reserved.
//

import UIKit

class LoginViewModel: NSObject {
    
    let correctEmail = "kareem@test.com"
    let correctPassword = "12345678"
    
    func validEmail(_ email: String) -> Bool {
        let emailRegEx = "(?:[a-z0-9!#$%\\&'*+/=?\\^_`{|}~-]+(?:\\.[a-z0-9!#$%\\&'*+/=?\\^_`{|}"+"~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\"+"x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-"+"z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:25[0-5"+"]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-"+"9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21"+"-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])"
        
        let emailTest = NSPredicate(format:"SELF MATCHES[c] %@", emailRegEx)
        return emailTest.evaluate(with: email)
    }
    
    func loginSuccess(email: String?, password: String?) -> Bool {
        if email != nil && password != nil {
            if password!.count > 0 {
                if validEmail(email!) {
                    if (email == correctEmail) && (password == correctPassword) {
                        return true
                    } else {
                        return false
                    }
                } else {
                    return false
                }
            } else {
                return false
            }
        }
        return false
    }
}
