//
//  EditView.swift
//  Eateries
//
//  Created by Kieran Murphy on 21/4/21.
//

import SwiftUI

struct EditView: View {
    
    @Binding var eatery: Eatery
    var body: some View {
        
        List {
            Section(header: Text("Name")) {
                TextField("Name", text: $eatery.name)
            }
            Section(header: Text("Image")) {
                TextField("Image", text: $eatery.url)
            }
            Section(header: Text("Location")) {
                TextField("Location", text: $eatery.location)
            }
            Section(header: Text("Notes")) {
                TextField("Notes", text: $eatery.notes)
            }
            
        }.listStyle(InsetGroupedListStyle())
    }
}


