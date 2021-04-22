//
//  ContentView.swift
//  Eateries
//
//  Created by Kieran Murphy on 21/4/21.
//

import SwiftUI

struct ContentView: View {
    @Binding var eateries: [Eatery]
    var body: some View {
        NavigationView{
            EateryList(eateries: $eateries)
        }
    }
}

/*
struct MasterView: View {
    @Binding var eateries: [Eatery]
    var body: some View {
        List(0..<eateries.count) { i in
            DetailView(eatery: $eateries[i])
        }
        
    }
}

struct DetailView: View {
    @Binding var eatery: Eatery
    var body: some View {
        TextField("Enter person name", text: $eatery.name, onCommit: {
            EateriesApp.save()
        })
    }
}
*/

/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
 ContentView(persons: Binding(get: {
     JSONserialisationApp.model
 }, set: { newValue in
     JSONserialisationApp.model = newValue
 }))
    }
}
*/

/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/
