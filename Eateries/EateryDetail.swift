//
//  EateryDetail.swift
//  Eateries
//
//  Created by Kieran Murphy on 21/4/21.
//

import SwiftUI

struct EateryDetail: View {
    @Binding var eatery: Eatery
    @State private var isPresented = false
    var body: some View {
        
            VStack {
                imageDownload(eatery.url)
                    .resizable()
                    .frame(width: 360.0,height:270.0)
                    .aspectRatio(contentMode: .fill)
                    .shadow(radius: 6)
                    .padding(.bottom)
            ScrollView {
                VStack(alignment: .leading) {
                Text(eatery.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)
                    .multilineTextAlignment(.leading)
                
                    
                Text(eatery.desc)
                    .italic()
                    .fontWeight(.ultraLight)
                    .padding(.horizontal)
                    .multilineTextAlignment(.leading)
                Text(eatery.story)
                    .padding(.horizontal)
                    .padding(.top)
                
                Text("Reviews")
                    .bold()
                    .padding(.horizontal)
                    .padding(.vertical)
                    ForEach(eatery.reviews, id: \.self) { review in
                        Text(review)
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
                    EditView(eatery: $eatery)
                        .navigationTitle("Edit")
                        .navigationBarItems(leading: Button("Cancel") {
                            isPresented = false
                        }, trailing: Button("Done") {
                            isPresented = false
                            EateriesApp.save()
                        })
                }
            }
    }
    
}
/*
struct EateryDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            EateryDetail(eatery: cottonCandy)
            
        }
    }
}
*/
