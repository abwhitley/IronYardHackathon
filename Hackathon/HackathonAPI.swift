//
//  HackathonAPI.swift
//  Hackathon
//
//  Created by Austins Work on 9/30/16.
//  Copyright © 2016 AustinsIronYard. All rights reserved.
//

import Foundation

enum Method: String {
    case Register = ":8080/register.json"
    case Login = "/login.json"
}

enum HackathonError: Error{
    case InvaildEmailOrPassWord 
}

//MARK: Class API
//class MeetupAPI {
//    let baseURL = config.baseURL
//    
//    //Creates the URL for the API
//    func meetUpURL(method: Method) -> URL {
//        let components = URLComponents(string: baseURL.appending(Method.Cities.rawValue))!
//        return components.url!
//    }
    
    
    
    //Parses through JSON for City Key
//    class func citiesFromJSONData(_ data: Data) -> CityResult {
//        do {
//            let jsonObject: Any = try JSONSerialization.jsonObject(with: data, options: [])
//            guard let
//                jsonDictionary = jsonObject as? [String: AnyObject],
//                let citiesArray = jsonDictionary["results"] as? [[String:AnyObject]] else{
//                    // The JSON structure doesn't match our expectations
//                    return .failure(MeetupError.invalidJSONData)
//            }
//            //
//            var finalCities = [City]()
//            for cityJSON in citiesArray {
//                if let city = cityFromJSONObject(cityJSON) {
//                    finalCities.append(city)
//                }
//            }
//            
//            if finalCities.count == 0 && citiesArray.count > 0 {
//                // We weren't able to parse any of the photos.
//                // Maybe the JSON format for photos has changed.
//                return .failure(MeetupError.invalidJSONData)
//            }
//            return .success(finalCities)
//        }
//        catch let error {
//            return .failure(error)
//        }

