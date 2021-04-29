//
//  EateriesTests.swift
//  EateriesTests
//
//  Created by Kieran Murphy on 21/4/21.
//

import XCTest
@testable import Eateries

class EateriesTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testEateryGetters() {
            let name = "El Camino Cantina"
            let location = "Mexico City"
            let notes = "They make tacos and they give you free sombreros"
            let reviews = ["Review 1", "Review 2", "Review 3"]
            let url = "https://www.visitbrisbane.com.au/~/media/articles/2020/november/elcaminocantina_20201125_wide.ashx"
           
            let eatery = Eatery(name: name, location: location, notes: notes, reviews: reviews, url: url)
            
            XCTAssertEqual(eatery.name, name)
            XCTAssertEqual(eatery.location, location)
            XCTAssertEqual(eatery.notes, notes)
            XCTAssertEqual(eatery.reviews, reviews)
            XCTAssertEqual(eatery.url, url)
    }
    
    
    func testEaterySetters() {
            let name = "El Camino Cantina"
            let location = "Mexico City"
            let notes = "They make tacos and they give you free sombreros"
            let reviews = ["Review 1", "Review 2", "Review 3"]
            let url = "https://www.visitbrisbane.com.au/~/media/articles/2020/november/elcaminocantina_20201125_wide.ashx"
           
            var eatery = Eatery(name: name, location: location, notes: notes, reviews: reviews, url: url)
            
            let newName = "The Fine Dine"
            eatery.name = newName
            XCTAssertEqual(eatery.name, "The Fine Dine")
            
            let newLocation = "Lisbon"
            eatery.location = newLocation
            XCTAssertEqual(eatery.location, "Lisbon")
            
            let newNotes = "Fancy food at its most lavish"
            eatery.notes = newNotes
            XCTAssertEqual(eatery.notes, "Fancy food at its most lavish")
            
            let newReviews = ["Reviews", "for", "The Fine Dine"]
            eatery.reviews = newReviews
            XCTAssertEqual(eatery.reviews, ["Reviews", "for", "The Fine Dine"])
                
            let newUrl = "www.url.com"
            eatery.url = newUrl
            XCTAssertEqual(eatery.url, "www.url.com")
            
            }


}
