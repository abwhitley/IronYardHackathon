//
//  RegisterViewController.swift
//  Hackathon
//
//  Created by Austins Work on 9/30/16.
//  Copyright © 2016 AustinsIronYard. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    
    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passWordTextField: UITextField!
    @IBOutlet var comfirmPasswordTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!

    var storeUser = User(firstName: "", lastName: "", email: "", password: "")
    @IBAction func finishedInputButton(_ sender: UIButton) {
        
        storeUser.firstName = self.firstNameTextField.text!
        storeUser.lastName = self.lastNameTextField.text!
        storeUser.email = self.emailTextField.text!
        if(passWordTextField.text == comfirmPasswordTextField.text){
            storeUser.password = self.passWordTextField.text!
        }
        print("\n\n\n\n\n")
        let a = storeUser.firstName
        let b = storeUser.lastName
        let c = storeUser.email
        let d = storeUser.password
        print(a)
        print(b)
        print(c)
        print(d)
        
        
        let session = URLSession.shared
        let baseURL = "https://192.168.86.199"
        let url: URL = URL(string: "\(baseURL)\(Method.Register.rawValue)")!
        var urlrequest: URLRequest = URLRequest.init(url: url)
        urlrequest.httpMethod = "POST"
        urlrequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlrequest.addValue("application/json", forHTTPHeaderField: "Accept")
        
        let registerUser : [String:String] = ["firstName":storeUser.firstName,"lastName":storeUser.lastName,"email": storeUser.email, "password": storeUser.password]
        do{
            
            urlrequest.httpBody = try JSONSerialization.data(withJSONObject: registerUser, options: [])


            let task = session.dataTask(with: urlrequest)  { (data: Data?, response: URLResponse?, error: Error?) in
                
                if data != nil {
                    print("\n\n\n\n We got \(data)\n\n\n\n ")
                }
                
            }
            task.resume()
        }catch{
            print("somthing wentwrong")
        }
        
        

        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

    

}
