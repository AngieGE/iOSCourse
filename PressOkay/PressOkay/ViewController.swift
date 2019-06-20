//
//  ViewController.swift
//  PressOkay
//
//  Created by Ariadna Angelica Guemes Estrada on 2019-05-29.
//  Copyright © 2019 Ariadna Angelica Guemes Estrada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        //my alert controller
        let alert = UIAlertController(title: "PRESS OK", message: "PRESS OK 2", preferredStyle: .alert)
        
        let okayAction = UIAlertAction(title: "OKAY", style: .default){ print("They pressed okay") }
        
        
    }


}

