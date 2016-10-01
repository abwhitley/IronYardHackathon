//
//  LoginViewController.swift
//  Hackathon
//
//  Created by Austins Work on 9/30/16.
//  Copyright © 2016 AustinsIronYard. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var emailLoginTextField: UITextField!
    @IBOutlet var passwordLoginTextField: UITextField!
    
    var storeUserLogin = UserLogin(email: "", password: "", userID: nil)
    @IBAction func loginUserButton(_ sender: UIButton) {
        
        storeUserLogin.email = self.emailLoginTextField.text!
        storeUserLogin.password = self.passwordLoginTextField.text!
        let session = URLSession.shared
        
        let api = HackathonAPI()
        
        //let baseURL = "http://192.168.85.184"
        let url: URL = api.meetUpURL(method: .Login)
        var urlrequest: URLRequest = URLRequest.init(url: url)
        urlrequest.httpMethod = "POST"
        urlrequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlrequest.addValue("application/json", forHTTPHeaderField: "Accept")
        
        let emailPassword : [String:String] = ["email": storeUserLogin.email, "password": storeUserLogin.password]
        do{
            
            urlrequest.httpBody = try JSONSerialization.data(withJSONObject: emailPassword, options: [])
            let task = session.dataTask(with: urlrequest)  { (data: Data?, response: URLResponse?, error: Error?) in
                
                if data != nil {
                    print("\n\n\n\n We got \(data)\n\n\n\n ")
                }
                
            }
            task.resume()
        }catch{
             print("somthing went wrong")
        }

        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

