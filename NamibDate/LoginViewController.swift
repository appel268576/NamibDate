//
//  LoginViewController.swift
//  NamibDate
//
//  Created by Arno Smit on 23/07/15.
//  Copyright (c) 2015 Namib Lost in Sweden. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func pressedFBLogin(sender: UIButton) {
        PFFacebookUtils.logInWithPermissions(["public_profile", "user_about_me", "user_birthday"], block: {
            user, error in
            
            if user == nil {
                println("Uh oh, the user cancelled Facebook Login")
            }
            else if user!.isNew {
                println("User signed up and logged in thorugh Facebook")
            }
            else {
                println("User logged in thorugh Facebook")
            }
        })
    }
    
    
}
