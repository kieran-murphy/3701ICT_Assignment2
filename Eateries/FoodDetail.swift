//
//  FoodDetail.swift
//  Eateries
//
//  Created by Kieran Murphy on 21/4/21.
//

import SwiftUI

struct FoodDetail: View {
    @State var food: Food
    @State private var isPresented = false
    var body: some View {
        
            VStack {
                imageDownload(food.url)
                    .resizable()
                    .frame(width: 300.0,height:300.0)
                    .aspectRatio(contentMode: .fill)
                    .shadow(radius: 6)
                    .padding(.bottom)
            ScrollView {
                VStack(alignment: .leading) {
                Text(food.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)
                    .multilineTextAlignment(.leading)
                
                    
                Text(food.desc)
                    .italic()
                    .fontWeight(.ultraLight)
                    .padding(.horizontal)
                    .multilineTextAlignment(.leading)
                Text(food.story)
                    .padding(.horizontal)
                    .padding(.top)
                
                Text("Ingredients")
                    .bold()
                    .padding(.horizontal)
                    .padding(.vertical)
                    ForEach(food.ingredients, id: \.self) { ingredient in
                        Text(ingredient)
                        Divider()
                    }.padding(.horizontal)
                Text("Recipe")
                    .bold()
                    .padding(.horizontal)
                    .padding(.vertical)
                    ForEach(food.recipe, id: \.self) { step in
                        Text(step)
                        Divider()
                    }.padding(.horizontal)
                
                
                    
                }.frame(maxWidth: .infinity)
            
        }.frame(minWidth: 0,
                maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .center
        )
    }
            .navigationBarItems(trailing: Button("Edit") {
                isPresented = true
            })
            
            .fullScreenCover(isPresented: $isPresented) {
                NavigationView {
                    EditView(food: $food)
                        .navigationTitle("Edit")
                        .navigationBarItems(leading: Button("Cancel") {
                            isPresented = false
                        }, trailing: Button("Done") {
                            isPresented = false
                        })
                }
            }
    }
    
}

struct FoodDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FoodDetail(food: cottonCandy)
            
        }
    }
}
