//
//  AuthService.swift
//  Social
//
//  Created by ahmed abokhalil on 7/5/1440 AH.
//  Copyright © 1440 AH ahmed abokhalil. All rights reserved.
//

import Foundation
import Firebase

class AuthService {
    static let instance = AuthService()
    
    func registerUser(withEmail email: String, andPassword password: String, userCreationComplete: @escaping (_ status: Bool, _ error: Error?) -> ()) {
        Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
            
            
            if Auth.auth().currentUser != nil {
                let user = Auth.auth().currentUser
                print("emailemailemail")
                print(user?.email as Any)
            let userData = ["provider": user!.providerID, "email": user!.email]
            DataService.instance.createDBUser(uid: user!.uid, userData: userData as Dictionary<String, Any>)
            print(user?.providerID as Any)
            print(user?.email as Any)
            userCreationComplete(true, nil)
        }else {
                userCreationComplete(false, error)
                return
            }
        }
    }

    
    func loginUser(withEmail email: String, andPassword password: String, loginComplete: @escaping (_ status: Bool, _ error: Error?) -> ()) {
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            if error != nil {
                loginComplete(false, error)
                return
            }
            loginComplete(true, nil)
        }
    }
}
