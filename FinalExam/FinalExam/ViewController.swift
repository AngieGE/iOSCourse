//
//  ViewController.swift
//  FinalExam
//
//  Created by Ariadna Angelica Guemes Estrada on 2019-08-10.
//  Copyright © 2019 Ariadna Angelica Guemes Estrada. All rights reserved.
//

import UIKit

struct RPG_Store: Decodable{
    var merchant_name: String
    var merchant_address: String
    var store_name: String
    var store_image: String
    var weapons: [TheWeapons]
    var potions: [ThePotions]
    var bard_songs: [TheSongs]
}

struct TheWeapons: Decodable{
    var name: String
    var cost: Int
    var damage: Int
    var icon: String
}

struct ThePotions: Decodable{
    var name: String
    var cost: Int
    var isPoisonous: Bool
    var icon: String
}

struct TheSongs: Decodable{
    var artist: String
    var title: String
    var length_seconds: Int
    var is_wicked_jungle: Bool
    var cost: Int
}
var items : RPG_Store = RPG_Store(merchant_name: "", merchant_address: "", store_name: "", store_image: "", weapons: [], potions: [], bard_songs: [])
var json = ""
var coins = 0
class ViewController: UIViewController {
   
    var store: RPG_Store!
    
    let sections = ["main", "weapons", "potions", "bardSongs"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        if let url = URL(string: "https://vfs-final-exam.s3.amazonaws.com/RPG_Store.json") {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    do {
                        let store = try JSONDecoder().decode(RPG_Store.self, from: data)
                            print(store.merchant_name)
                            items = store
                            } catch let error {
                        print(error)
                    }
                }
            }.resume()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("buy")
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let storyboard = self.storyboard!;
        if(indexPath.section == 0){ //main section
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ATableViewCell
            cell.merchantName.text = items.merchant_name
            cell.merchantAddress.text =  items.merchant_address
            cell.storeName.text =  items.store_name
            //cell.storeImage.image
            return cell
        }
        if(indexPath.section == 1){ //weapons section
            let cell = tableView.dequeueReusableCell(withIdentifier: "weaponCell", for: indexPath) as! WeaponsTableViewCell
            cell.weaponName.text = items.weapons[indexPath.row].name
            cell.weaponCost.text = String(items.weapons[indexPath.row].cost)
            cell.weaponDamage.text = String(items.weapons[indexPath.row].damage)
            return cell
        }
        if(indexPath.section == 2){ //potions section
            let cell = tableView.dequeueReusableCell(withIdentifier: "potionCell", for: indexPath) as! PotionsTableViewCell
            cell.potionName.text = items.potions[indexPath.row].name
            cell.potionCost.text = String(items.potions[indexPath.row].cost)
            cell.potionIsPoisonous.text = String(items.potions[indexPath.row].isPoisonous)
            return cell
        }
        if(indexPath.section == 3){ //bardSongs section
            let cell = tableView.dequeueReusableCell(withIdentifier: "bardSongCell", for: indexPath) as! BardSongsTableViewCell
            cell.bardArtist.text = items.bard_songs[indexPath.row].artist
            cell.bardTitle.text = items.bard_songs[indexPath.row].title
            cell.bardLengthSeconds.text = String(items.bard_songs[indexPath.row].length_seconds)
            cell.bardIsWickedJoungle.text = String(items.bard_songs[indexPath.row].is_wicked_jungle)
            cell.bardCost.text = String(items.bard_songs[indexPath.row].cost)
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ATableViewCell
    
        return cell
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.sections[section]
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // Do any additional setup after loading the view, typically from a nib.
        let currentCount = UserDefaults.standard.integer(forKey: "launchCount")
        // increment received number by one
        UserDefaults.standard.set(currentCount+1, forKey:"launchCount")
        print(currentCount)
        //WELCOME ALERT THAT TELLS A JOKE
        let alert = UIAlertController(title: "Welcome for the first time", message: "You are granted 1000 coins", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: {action in print("It said ok")})
        alert.addAction(okAction)
    
        //if currentCount == 0 {
            present(alert, animated: true, completion: nil)
        //}
    }
    
}

