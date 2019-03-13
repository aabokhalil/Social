//
//  AuthVC.swift
//  Social
//
//  Created by ahmed abokhalil on 7/5/1440 AH.
//  Copyright © 1440 AH ahmed abokhalil. All rights reserved.
//

import UIKit

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func signInWithEmailButtonWasPressde(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVC!, animated: true, completion: nil)
        
    }
    
    @IBAction func googleSignInButtonWasPressed(_ sender: Any) {
    }
    @IBAction func FacebookSignInButtonWasPressed(_ sender: Any) {
    }
}
