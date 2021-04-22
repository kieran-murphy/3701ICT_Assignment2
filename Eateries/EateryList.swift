//
//  EateryList.swift
//  Eateries
//
//  Created by Kieran Murphy on 21/4/21.
//

import SwiftUI

struct EateryList: View {
    //@State var favouriteEateries = favouriteEateriesOriginal
    @Binding var eateries: [Eatery]
    var body: some View {
        NavigationView {
            VStack {
                /*List {
                        ForEach([Eatery], id: \.self) { eatery in
                            NavigationLink(destination: EateryDetail(eatery: eatery)) {
                               EateryRow(eatery: eatery)
                           }
                        } */
                        List(0..<eateries.count) { i in
                            NavigationLink(destination: EateryDetail(eatery: eateries[i])) {
                                EateryRow(eatery: $eateries[i])
                        }
                        //.onDelete(perform: delete)
                        //.onMove(perform: move)
                    }.navigationTitle("Favourite Eateries")
                .navigationBarItems(leading: EditButton(), trailing: Button( action: add)
                {
                    Image(systemName: "plus")
                    
                }
                    )
                     .listStyle(InsetGroupedListStyle())
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
    */
   
        
    func delete(indexSet: IndexSet) {
        eateries.remove(atOffsets: indexSet)
        }
    func move(indicies: IndexSet, newOffset: Int) {
        eateries.move(fromOffsets: indicies, toOffset: newOffset)
    }
    func add() {
        eateries.append(Eatery(name: "Eatery", desc: "Insert description here", story: "Insert story here", recipe: ["Insert recipe here"], ingredients: ["Insert ingredients here"], url: "https://i.imgur.com/y3MMnba.png"))
    }
}
/*
struct EateryList_Previews: PreviewProvider {
    static var previews: some View {
        EateryList()
    }
}
*/
