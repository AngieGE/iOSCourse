//
//  LoginViewController.swift
//  Bamboo Breakout
//
//  Created by Ariadna Angelica Guemes Estrada on 2019-06-26.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let first = UserDefaults.standard.bool(forKey: "first")
        
        if first == true {
            let alert = UIAlertController(title: "Welcome", message: "Do you want to start playing", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
            
            self.present(alert, animated: true)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
