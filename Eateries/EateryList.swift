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
                    ForEach(eateries) {
                        let eaterie = $0 //<--- Here
                        NavigationLink(destination: EateryDetail(eatery: $eateries[identifiedBy: eaterie])) { //<--- Here
                            EateryRow(eatery: $eateries[identifiedBy: eaterie]) //<--- Here
                        }
                    }
                    
                    .onMove {
                        eateries.move(fromOffsets: $0, toOffset: $1)
                        EateriesApp.save()
                    }.onDelete {
                        eateries.remove(atOffsets: $0)
                        EateriesApp.save()
                    }
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
    
    func add() {
        eateries.append(Eatery(name: "Eatery", location: "Insert location here", notes: "Insert notes here", reviews: ["Insert reviews here"], url: "https://i.imgur.com/y3MMnba.png"))
        EateriesApp.save()
    }
}


