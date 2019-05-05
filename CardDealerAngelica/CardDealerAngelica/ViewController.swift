//
//  ViewController.swift
//  CardDealerAngelica
//
//  Created by Ariadna Angelica Guemes Estrada on 2019-05-04.
//  Copyright © 2019 Ariadna Angelica Guemes Estrada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var card = ""
    var cards = [ "4_of_clubs", "2_of_spades","5_of_diamonds"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        title = "Deal a card"

    }
    
    @IBAction func DealCardButton(_ sender: Any) {
        self.card = cards[0]
        performSegue(withIdentifier: "identifierClick", sender: self)
       // cards.remove(at:0)
    }
    
    //called when a segue is called
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! SecondViewController
        vc.cardName = self.card
    }
    
}
