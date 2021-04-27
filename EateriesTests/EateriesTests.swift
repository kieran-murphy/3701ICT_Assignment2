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
                let name = "Cotton Candy"
                let image = "cottonCandy"
                let desc = "A mixture of sugar and happiness"
                let story = "My dentist hates me for eating this. Sorry, dentist."
                let reviews = ["Step 1", "Step 2", "Step 3"]
               
                let food = Food(name: name, image: image, desc: desc, story: story, recipe: recipe, ingredients: ingredients)
                
                XCTAssertEqual(food.image, image)
                XCTAssertEqual(food.name, name)
                XCTAssertEqual(food.desc, desc)
                XCTAssertEqual(food.story, story)
                XCTAssertEqual(food.recipe, recipe)
                XCTAssertEqual(food.ingredients, ingredients)
            }

}
