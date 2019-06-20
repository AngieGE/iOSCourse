//
//  ViewController.swift
//  decoderExercise
//
//  Created by Ariadna Angelica Guemes Estrada on 2019-06-12.
//  Copyright © 2019 Ariadna Angelica Guemes Estrada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let bundle = Bundle.main
        
        if let  filePATH = bundle.path(forResource: "suits", ofType: "json"){
            let fileUrl = URL(fileURLWithPath: filePATH)
             let data = try? Data(contensOf: fileUrl, options: .mappedIfSafe)
                let deck = try? JSONDecoder().decode(Deck.self, from: data!)
            print("the number of suits in my deck is\(deck?.suits.count ?? -1)")
        
        
            if let S = deck?.suits.first{
                print("the name od the irst suit is \(S.name)")
            }
        }
        
        
        
        
    }


}

