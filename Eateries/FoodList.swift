//
//  FoodList.swift
//  Eateries
//
//  Created by Kieran Murphy on 21/4/21.
//

import SwiftUI

struct FoodList: View {
    @State var favouriteFoods = favouriteFoodsFood
    var body: some View {
        NavigationView {
            VStack {
                List {
                        ForEach(favouriteFoods, id: \.self) { food in
                            NavigationLink(destination: FoodDetail(food: food)) {
                               FoodRow(food: food)
                           }
                        }
                        .onDelete(perform: delete)
                        .onMove(perform: move)
                    }.navigationTitle("Favourite Foods")
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
        favouriteFoods.remove(atOffsets: indexSet)
        }
    func move(indicies: IndexSet, newOffset: Int) {
        favouriteFoods.move(fromOffsets: indicies, toOffset: newOffset)
    }
    func add() {
        favouriteFoods.append(Food(name: "Food", desc: "Insert description here", story: "Insert story here", recipe: ["Insert recipe here"], ingredients: ["Insert ingredients here"], url: "https://i.imgur.com/y3MMnba.png"))
    }
}

struct FoodList_Previews: PreviewProvider {
    static var previews: some View {
        FoodList()
    }
}
