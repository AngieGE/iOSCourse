import UIKit

struct Card
{
    let image, name: String
    init(image:String, name:String)
    {
        self.image = image;
        self.name = name
    }

}

class Deck
{
    let nums = ["1", "2","3","4","5","6","7","8","9","10", "jack", "king", "queen"]
    let icons = ["clubs", "diamonds", "hearts", "spades"]

    private var cards = [Card]()
    required init(){
        for i in 0..<13{
            for j in 0..<4{
                let _img = nums[i] + "_of_" + icons[j]
                let _name = nums[i] + " of " + icons[j]
                let MyCard = Card(image: _img, name: _name)
                cards.append(MyCard)
            }
        }
    }
    
    func GetAt(index: Int) -> Card{
        return cards[index]
    }
}

let myDeck = Deck()
for i in 0..<51{
    let myCard = myDeck.GetAt(index:i)
    print("My card is \(myCard.name)")
}


