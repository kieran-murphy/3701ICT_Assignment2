//
//  EateryList.swift
//  Eateries
//
//  Created by Kieran Murphy on 21/4/21.
//
/*
import SwiftUI

struct EateryList: View {
    @State var favouriteEateries = favouriteEateriesOriginal
    var body: some View {
        NavigationView {
            VStack {
                List {
                        ForEach(favouriteEateries, id: \.self) { eatery in
                            NavigationLink(destination: EateryDetail(eatery: eatery)) {
                               EateryRow(eatery: eatery)
                           }
                        }
                        .onDelete(perform: delete)
                        .onMove(perform: move)
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
   
        
    func delete(indexSet: IndexSet) {
        favouriteEateries.remove(atOffsets: indexSet)
        }
    func move(indicies: IndexSet, newOffset: Int) {
        favouriteEateries.move(fromOffsets: indicies, toOffset: newOffset)
    }
    func add() {
        favouriteEateries.append(Eatery(name: "Eatery", desc: "Insert description here", story: "Insert story here", recipe: ["Insert recipe here"], ingredients: ["Insert ingredients here"], url: "https://i.imgur.com/y3MMnba.png"))
    }
}

struct EateryList_Previews: PreviewProvider {
    static var previews: some View {
        EateryList()
    }
}
*/
