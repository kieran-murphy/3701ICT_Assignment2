//
//  Food.swift
//  Eateries
//
//  Created by Kieran Murphy on 21/4/21.
//


///🍽 A place where humans can exchange their currency for food
struct Eatery: Hashable, Codable {
    ///The name of the eatery
    var name: String
    ///The geographic positioning of the eatery
    var location: String
    ///Some information about the eatery
    var notes: String
    ///Some feedback critics had about the eatery
    var reviews: [String] = []
    ///A URL that points to where the eatery's image is stored on the internet
    var url: String = ""
    
    
}
