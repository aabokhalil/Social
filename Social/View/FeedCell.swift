//
//  FeedCell.swift
//  Social
//
//  Created by ahmed abokhalil on 7/18/1440 AH.
//  Copyright © 1440 AH ahmed abokhalil. All rights reserved.
//

import UIKit

class FeedCell: UITableViewCell {

    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    
    func configureCell (profileImage : UIImage , email : String , content : String ) {
        self.profileImage.image = profileImage
        self.contentLabel.text = content
        self.emailLabel.text = email
    }
    
    
    
}
