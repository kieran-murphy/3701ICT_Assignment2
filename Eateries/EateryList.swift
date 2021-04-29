//
//  EateryList.swift
//  Eateries
//
//  Created by Kieran Murphy on 21/4/21.
//

import SwiftUI

struct EateryList: View {
    @Binding var eateries: [Eatery]
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(eateries.indices, id: \.self) { i in
                            NavigationLink(destination: EateryDetail(eatery: $eateries[i])) {
                               EateryRow(eatery: $eateries[i])
                           }
                        }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }
                
                .navigationTitle("Favourite Eateries")
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
            eateries.remove(atOffsets: indexSet)
            }
    func move(indicies: IndexSet, newOffset: Int) {
        eateries.move(fromOffsets: indicies, toOffset: newOffset)
    }
    func add() {
        eateries.append(Eatery(name: "Eatery", location: "Insert location here", notes: "Insert notes here", reviews: ["Insert reviews here"], url: "https://i.imgur.com/y3MMnba.png"))
    }
}


