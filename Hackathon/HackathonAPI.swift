//
//  HackathonAPI.swift
//  Hackathon
//
//  Created by Austins Work on 9/30/16.
//  Copyright © 2016 AustinsIronYard. All rights reserved.
//

import Foundation

let baseURL = URL.init(string: "http://192.168.85.184")

enum Method: String {
    case Register = ":8080/newUser.json"
    case Login = ":8080/login.json"
    case Test = ":8080/test"
}

enum UserResult {
    case success([User])
    case failure(Error)
}


enum HackathonError: Error{
    case InvaildEmailOrPassWord
    case InvalidJSONData
    case InvalidURL
}

//MARK: Class API
class HackathonAPI {
    
    //Creates the URL for the API
    func meetUpURL(method: Method) -> URL {
        switch method {
        case .Register:
            let components = URLComponents(string: (baseURL?.absoluteString)! + Method.Register.rawValue)!
            return components.url!
        case .Login:
            let components = URLComponents(string: (baseURL?.absoluteString)! + Method.Login.rawValue)!
            return components.url!
            
        default:
            return baseURL!
        }
    }
    
    
    
    //Parses through JSON for User Key
    class func userIDFromJSONData(_ data: Data) -> UserResult {
        do {
            let jsonObject: Any = try JSONSerialization.jsonObject(with: data, options: [])
            guard let
                jsonDictionary = jsonObject as? [String: AnyObject],
            let user = jsonDictionary["id"] as? [[String:AnyObject]] else{
                    // The JSON structure doesn't match our expectations
                    return .failure(HackathonError.InvalidJSONData)
            }
            //
            let finalUser = [User]()
            
            //need an ID for USER
            

            
            if user.count == 0 {
                // We weren't able to parse any of the photos.
                // Maybe the JSON format for photos has changed.
                return .failure(HackathonError.InvalidJSONData)
            }
            return .success(finalUser)
        }
        catch let error {
            return .failure(error)
        }
}
}
