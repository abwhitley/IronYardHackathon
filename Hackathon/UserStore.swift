//
//  UserStore.swift
//  Hackathon
//
//  Created by Austins Work on 9/30/16.
//  Copyright © 2016 AustinsIronYard. All rights reserved.
//

import UIKit

////MARK: Class CityStore
//class Store {
//    
//    let session: URLSession = {
//        let config = URLSessionConfiguration.default
//        return URLSession(configuration:config)
//    }()
//    
//    // Func to check if we get data from JSON
//    func processCityRequest(data: Data?, error: NSError?) -> CityResult {
//        guard let jsonData = data else {
//            return .failure(error!)
//        }
//        
//        return MeetupAPI.citiesFromJSONData(jsonData)
//    }
//    
//    // Fuction for URL Request
//    func fetchCities(completion: @escaping (CityResult) -> Void) {
//        let api = MeetupAPI()
//        let url = api.meetUpURL(method:Method.Cities)
//        let request = URLRequest(url: url as URL)
//        let task = session.dataTask(with: request, completionHandler: {
//            (data, response, error) -> Void in
//            
//            let result = self.processCityRequest(data: data, error: error as NSError?)
//            completion(result)
//        })
//        task.resume()
//    }
//}
//
