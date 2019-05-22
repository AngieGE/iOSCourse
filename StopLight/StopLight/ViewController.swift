//
//  ViewController.swift
//  StopLight
//
//  Created by Ariadna Angelica Guemes Estrada on 2019-05-15.
//  Copyright © 2019 Ariadna Angelica Guemes Estrada. All rights reserved.
//

import UIKit
var cards = [Card]()
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var lights = [StopLight]()
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let card = cards[indexPath.row]
        print("\(card.command)")
        self.view.backgroundColor =  card.color
        
        //remember the index that was touched
        //modify the cell for row tp set the cells background if it was the last one touched
        //then reload the table
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cards.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = UITableViewCell()
        let card = cards[indexPath.row]
    
       // cell.textLabel?.text = light.command
        // cell.textLabel?.textColor = light.color
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "StopLightCell") as! StopLightTableViewTableViewCell
        
        cell.commandLabel.text = card.command
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let redLight = Card(command: "Stop",   color: UIColor.red)
         let greenLight = Card(command: "Go",   color: UIColor.green)
         let yellowLight = Card(command: "Slow down",   color: UIColor.yellow)
    
       // lights = [redLight, greenLight, yellowLight]
        
        let nums = ["1", "2","3","4","5","6","7","8","9","10", "jack", "king", "queen"]
        let icons = ["clubs", "diamonds", "hearts", "spades"]
        
            for i in 0..<13{
                for j in 0..<4{
                    let _img = nums[i] + "_of_" + icons[j]
                    let _name = nums[i] + " of " + icons[j]
                    let MyCard = Card(image: _img, name: _name)
                    cards.append(MyCard)
                }
            }
        
    }
}

