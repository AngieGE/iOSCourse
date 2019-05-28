//
//  ViewController.swift
//  StopLight
//
//  Created by Ariadna Angelica Guemes Estrada on 2019-05-15.
//  Copyright © 2019 Ariadna Angelica Guemes Estrada. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var cards = [Card]()
    var items : [[Card]] = []
    let sections = ["Clubs", "Diamonds", "Hearts", "Spades","Extra" ]
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        //print(indexPath.section)
        if indexPath.row == 0 && indexPath.section == 4 {
                //TODO reset all to 0
            print("reset")
            for i in 0..<4{
                for j in 0..<13{
                    items[i][j].counter = 0
                }
            }
        }else{
            items[indexPath.section][indexPath.row].counter = items[indexPath.section][indexPath.row].counter + 1
        }
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
        let storyboard = self.storyboard!;

        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! StopLightTableViewTableViewCell
        cell.commandLabel.text = items[indexPath.section][indexPath.row].name
        cell.commandCounter.text = String(items[indexPath.section][indexPath.row].counter)
        cell.commandImage.image = UIImage(named: items[indexPath.section][indexPath.row].image)

        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let nums = ["ace", "2","3","4","5","6","7","8","9","10", "jack", "king", "queen"]
        let icons = ["clubs", "diamonds", "hearts", "spades"]
        var clubsCards = [Card]()
        var diamondsCards = [Card]()
        var heartsCards = [Card]()
        var spadesCards = [Card]()
        var extraSec = [Card]()
        for i in 0..<13{
            for j in 0..<4{
                let _img = nums[i] + "_of_" + icons[j]
                let _name = nums[i] + " of " + icons[j]
                let MyCard = Card(image: _img, name: _name, counter: 0)
                if j == 0{
                    clubsCards.append(MyCard)
                }
                if j == 1{
                    diamondsCards.append(MyCard)
                }
                if j == 2{
                    heartsCards.append(MyCard)
                }
                if j == 3{
                    spadesCards.append(MyCard)
                }
            }
        }
       
        //the extra section
        
        let _img = "Click to reset"
        let _name = "Click to reset"
        let MyCard = Card(image: _img, name: _name, counter: 0)
     
        extraSec.append(MyCard)
      
        self.items = [clubsCards, diamondsCards, heartsCards, spadesCards, extraSec]
        
    
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.sections[section]
    }
}

