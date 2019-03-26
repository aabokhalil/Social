//
//  UserCell.swift
//  Social
//
//  Created by ahmed abokhalil on 7/19/1440 AH.
//  Copyright © 1440 AH ahmed abokhalil. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {


    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var checkImage: UIImageView!
    
    var showCheckImage = false
    
    func configureCell(profileImage image: UIImage, email: String, isSelected: Bool) {
        self.profileImage.image = image
        self.emailLabel.text = email
        if isSelected {
            self.checkImage.isHidden = false
        } else {
            self.checkImage.isHidden = true
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected {
            if showCheckImage == false {
               checkImage.isHidden = false
                showCheckImage = true
            } else {
                checkImage.isHidden = true
                showCheckImage = false
            }
        }
    }
}
