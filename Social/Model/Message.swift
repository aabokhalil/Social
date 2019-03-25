//
//  Message.swift
//  Social
//
//  Created by ahmed abokhalil on 7/18/1440 AH.
//  Copyright © 1440 AH ahmed abokhalil. All rights reserved.
//

import Foundation

class Message {
    private var _content: String
    private var _senderId: String
    
    var content: String {
        return _content
    }
    
    var senderId: String {
        return _senderId
    }
    
    init(content: String, senderId: String) {
        self._content = content
        self._senderId = senderId
    }
}
