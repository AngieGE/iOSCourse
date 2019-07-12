//
//  ViewController.swift
//  CollectionViewImages
//
//  Created by Angelica Güemes on 7/11/19.
//  Copyright © 2019 Angelica. All rights reserved.
//

import UIKit
struct Images: Decodable {
    var name: String
    var description: String?
}

let json = """
[
       {
            "name": "image0",
            "description": "cocoa thinking"
        },
        {
            "name": "image1",
            "description": "baby cocoa sleeping"
        },
        {
            "name": "image2",
            "description": "cocoa in the forest"
        },
       {
            "name": "image3",
            "description": "cocoa is nice"
        },
        {
            "name": "image4",
            "description": "good cocoa"
        },
        {
            "name": "image5",
            "description": "bad cocoa?"
        },
       {
            "name": "image6",
            "description": "this is cocoa"
        },
        {
            "name": "image7",
            "description": "shw is a big big dog"
        },
        {
            "name": "image8",
            "description": "she likes the beach"
        },
        {
            "name": "image9",
            "description": "thanks for watching"
        }

]
""".data(using: .utf8)!
class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var images: [Images]!
   // let path = Bundle.main.path(forResource: "test", ofType: "json")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        do {
            images = try JSONDecoder().decode([Images].self, from: json)
        } catch {
            // Handle error here
            print(error.localizedDescription)
            print("handle error")
        }

       
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        cell.myImage.image = UIImage(named: images[indexPath.item].name)
        cell.myLabelDesc.text = images?[indexPath.item].description
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         //ViewController.readJSONFromFile(fileName: "test")
        print(indexPath.item)
       // print(json.person)
  
    }

 
}

