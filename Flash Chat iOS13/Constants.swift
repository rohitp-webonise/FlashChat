//
//  Constants.swift
//  Flash Chat iOS13
//
//  Created by Rohit Patil on 25/02/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

struct K {
    static let appName = "⚡️FlashChat"
   static let registerSegue = "RegisterToChat"
   static let loginSegue = "LoginToChat"
    static let cellNibName = "MessageCell"
    static let cellIdentifier = "ReusableCell"
    
    
    
    struct BrandColors {
        static let purple = "BrandPurple"
        static let lightpurple = "BrandLightPurple"
        static let blue = "BrandBlue"
        static let lightBlue = "BrandLightBlue"
        
        }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}
