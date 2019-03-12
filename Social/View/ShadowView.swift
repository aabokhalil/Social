//
//  ShadowView.swift
//  Social
//
//  Created by ahmed abokhalil on 7/5/1440 AH.
//  Copyright © 1440 AH ahmed abokhalil. All rights reserved.
//

import UIKit

class ShadowView: UIView {

    override func awakeFromNib() {
            self.layer.shadowOpacity = 0.75
            self.layer.shadowRadius = 5
            self.layer.shadowColor = UIColor.black.cgColor
    }
}
