//
//  ViewController.swift
//  class3
//
//  Created by Ariadna Angelica Guemes Estrada on 2019-05-15.
//  Copyright © 2019 Ariadna Angelica Guemes Estrada. All rights reserved.
//

import UIKit

extension UIButton{
    func makeNice (borderWidth: CGFloat, borderColor:UIColor, cornerRadius: Float){
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
        self.layer.cornerRadius = cornerRadius
    }
    
}

class ViewController: UIViewController {

    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    
    @IBAction func redButtonPressed(_ sender: UIButton) {
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        redButton.makeNice(borderWidth: 3.0, borderColor: UIColor.red.cgColor, cornerRadius: 5.0)

        
        yellowButton.makeNice(borderWidth: 3.0, borderColor: UIColor.yellow.cgColor, cornerRadius: 5.0)
        
        greenButton.makeNice(borderWidth: 3.0, borderColor: UIColor.green.cgColor, cornerRadius: 5.0)
        
        
    }


}


