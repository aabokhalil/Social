//
//  CreatePostVC.swift
//  Social
//
//  Created by ahmed abokhalil on 7/18/1440 AH.
//  Copyright © 1440 AH ahmed abokhalil. All rights reserved.
//

import UIKit
import Firebase
class CreatePostVC: UIViewController {

    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var sendButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.delegate = self

        // Do any additional setup after loading the view.
    }

    @IBAction func sendButtonWasPressed(_ sender: Any) {
        if textView.text != nil && textView.text != "Say something here ..." {
            sendButton.isEnabled = false
            DataService.instance.uploadPost(withMessage: textView.text, forUID: (Auth.auth().currentUser?.uid)!, withGroupKey: nil) { (isComplete) in
                if isComplete {
                    self.sendButton.isEnabled = true
                    self.dismiss(animated: true, completion: nil)
                } else {
                    self.sendButton.isEnabled = true
                    print("ther was an error in (CreatePostVC)")
                }
            }
        }
        
    }
    
    
    @IBAction func closeButtonWasPressed(_ sender: Any) {
        
       dismiss(animated: true, completion: nil)
    }
}

extension CreatePostVC : UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = ""
    }
}
