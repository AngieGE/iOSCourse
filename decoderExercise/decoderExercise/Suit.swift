//
//  Suit.swift
//  decoderExercise
//
//  Created by Ariadna Angelica Guemes Estrada on 2019-06-12.
//  Copyright © 2019 Ariadna Angelica Guemes Estrada. All rights reserved.
//

import Foundation

class Deck: Decodable{
    var suits: [Suit]
}

class Suit: Decodable{
    var name:String
    var image:String
    var id: Int
}
