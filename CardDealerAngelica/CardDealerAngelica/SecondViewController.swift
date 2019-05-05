//
//  SecondViewController.swift
//  CardDealerAngelica
//
//  Created by Ariadna Angelica Guemes Estrada on 2019-05-04.
//  Copyright © 2019 Ariadna Angelica Guemes Estrada. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var cardImage: UIImageView!
    var cardName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cardImage.image = UIImage(named: cardName)
        // Do any additional setup after loading the view.
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
