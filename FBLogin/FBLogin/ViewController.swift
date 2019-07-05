//
//  ViewController.swift
//  FBLogin
//
//  Created by Ariadna Angelica Guemes Estrada on 2019-06-26.
//  Copyright © 2019 Ariadna Angelica Guemes Estrada. All rights reserved.
//

import UIKit
import FacebookLogin
import FBSDKCoreKit
import FBSDKLoginKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let loginButton = FBLoginButton()
        loginButton.permissions = ["public_profile", "email"]
        loginButton.center = view.center
        
        view.addSubview(loginButton)
    }


}

