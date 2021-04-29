//
//  Food.swift
//  Eateries
//
//  Created by Kieran Murphy on 21/4/21.
//

struct Eatery: Hashable, Codable {
    ///The name of the food item
    var name: String
    ///The reference image of the food item
    //var image: String
    ///A short description of the food item
    var location: String
    ///A short personal story about the food item
    var notes: String
    ///Instructions on how to create the food item
    var reviews: [String] = []
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
