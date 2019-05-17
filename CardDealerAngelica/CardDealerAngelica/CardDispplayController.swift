//
//  CardDispplayController.swift
//  CardDealerAngelica
//
//  Created by Ariadna Angelica Guemes Estrada on 2019-05-13.
//  Copyright © 2019 Ariadna Angelica Guemes Estrada. All rights reserved.
//

import UIKit
let myDeck = Deck()
class CardDispplayController: UIViewController {

    @IBOutlet weak var CardTextDisplay: UITextView!
    @IBOutlet weak var CardImage: UIImageView!
    
    var i = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        let myCard = myDeck.GetAt(index : i)
        let nameImage = myCard.image
        //the the image with the card image
        CardImage.image = UIImage(named: nameImage)
    }
}

struct Card//the structure of a card
{
    let image:String
    init(image:String)
    {
        self.image = image;//name of the png image
    }
}

class Deck
{
    let nums = ["ace", "2","3","4","5","6","7","8","9","10", "jack", "king", "queen"]
    let icons = ["clubs", "diamonds", "hearts", "spades"]
    
    private var cards = [Card]()
    required init(){
        //create the deck in order
        for i in 0..<13{
            for j in 0..<4{
                let _img = nums[i] + "_of_" + icons[j]
                let MyCard = Card(image: _img)
                cards.append(MyCard)
            }
        }
        cards = cards.shuffled();//shuffle the deck
    }
    //get the card at a certain index
    func GetAt(index: Int) -> Card{
        return cards[index]
    }
}
