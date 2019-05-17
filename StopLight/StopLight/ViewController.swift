//
//  ViewController.swift
//  StopLight
//
//  Created by Ariadna Angelica Guemes Estrada on 2019-05-15.
//  Copyright © 2019 Ariadna Angelica Guemes Estrada. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var lights = [StopLight]()
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let light = lights[indexPath.row]
        print("\(light.command)")
        self.view.backgroundColor =  light.color
        
        //remember the index that was touched
        //modify the cell for row tp set the cells background if it was the last one touched
        //then reload the table
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lights.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = UITableViewCell()
        let light = lights[indexPath.row]
    
       // cell.textLabel?.text = light.command
        // cell.textLabel?.textColor = light.color
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "StopLightCell") as! StopLightTableViewTableViewCell
        
        cell.commandLabel.text = light.command
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let redLight = StopLight(command: "Stop",   color: UIColor.red)
         let greenLight = StopLight(command: "Go",   color: UIColor.green)
         let yellowLight = StopLight(command: "Slow down",   color: UIColor.yellow)
    
        lights = [redLight, greenLight, yellowLight]
    }


}

