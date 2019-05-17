//
//  ViewController.swift
//  CardDealerAngelica
//
//  Created by Ariadna Angelica Guemes Estrada on 2019-05-13.
//  Copyright © 2019 Ariadna Angelica Guemes Estrada. All rights reserved.
//

import UIKit
var deckIndex : Int! = 0
var cardsLeft : Int! = 52
class ViewController: UIViewController {


    @IBOutlet weak var button: UIButton!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        //update the amount of card on the deck
        button.setTitle("Cards left: " + String( cardsLeft), for: .normal)
        
    }
    
    //called when taking a card
    @IBAction func UpdateDeckAmount(_ sender: UIButton) {
        cardsLeft = cardsLeft - 1 // update deck amount everytime the button is clicked
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! CardDispplayController
        vc.i = deckIndex
        deckIndex = deckIndex + 1
        //reset the deck after they saw all the cards
        if(deckIndex == 52)
        {
            deckIndex = 0
            cardsLeft = 52
        }
        print(vc.i)
    }

}



