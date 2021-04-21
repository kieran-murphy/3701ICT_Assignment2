//
//  EditView.swift
//  Eateries
//
//  Created by Kieran Murphy on 21/4/21.
//

import SwiftUI

struct EditView: View {
    
    @Binding var food: Food
    var body: some View {
        
        List {
            Section(header: Text("Name")) {
                TextField("Name", text: $food.name)
            }
            Section(header: Text("Image")) {
                TextField("Image", text: $food.url)
            }
            Section(header: Text("Desc")) {
                TextField("Desc", text: $food.desc)
            }
            Section(header: Text("Story")) {
                TextField("Story", text: $food.story)
            }
            
        }.listStyle(InsetGroupedListStyle())
    }
}

