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
}
