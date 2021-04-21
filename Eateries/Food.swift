//
//  Food.swift
//  Eateries
//
//  Created by Kieran Murphy on 21/4/21.
//

import SwiftUI
/// 🍔 An edible form of energy for humans
struct Food: Hashable {
    ///The name of the food item
    var name: String
    ///The reference image of the food item
    //var image: String
    ///A short description of the food item
    var desc: String
    ///A short personal story about the food item
    var story: String
    ///Instructions on how to create the food item
    var recipe: [String] = []
    ///A list of things required to create the food item
    var ingredients: [String] = []
    ///A URL that points to where the image is stored on the internet
    var url: String = ""
    ///A  function that runs the imageDownload function if the URL is valid, else returns the placeholder image
    
    
    
    
    
    /*
    var pic: Image {
        if let u = url {
        return imageDownload(u)     //  Attempts to download an image from the provided URL
        } else {
            return Image("Placeholder")    //  If the url is empty, the default image is returned
        }
    }
    */
}
