//
//  User.swift
//  Hackathon
//
//  Created by Austins Work on 9/30/16.
//  Copyright © 2016 AustinsIronYard. All rights reserved.
//

import UIKit


class User {
    
    var firstName : String
    var lastName : String
    var email : String
    var password : String
    var userID : Int?
    
    init(firstName:String, lastName:String, email:String, password:String, userID: Int?) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
        self.userID = userID
    }
    
}

class UserLogin{
    var email : String
    var password: String
    var userID: Int?
    
    init(email:String, password:String, userID: Int?) {
        self.email = email
        self.password = password
        self.userID = userID
    }
}
