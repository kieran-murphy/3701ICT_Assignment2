//
//  Food.swift
//  Eateries
//
//  Created by Kieran Murphy on 21/4/21.
//
import Foundation
///🍽 A place where humans can exchange their currency for food
struct Eatery: Codable, Identifiable {
    ///The identification number for the eatery
    var id = UUID()
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
