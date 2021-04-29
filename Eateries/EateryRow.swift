//
//  EateryRow.swift
//  Eateries
//
//  Created by Kieran Murphy on 21/4/21.
//

import SwiftUI

struct EateryRow: View {
    //var eatery: Eatery
    @Binding var eatery: Eatery
    
    var body: some View {
            HStack {
                imageDownload(eatery.url)
                    .resizable()
                    .frame(width: 50, height: 50)
                VStack(alignment: .leading) {
                    Text(eatery.name)
                    Text(eatery.location)
                    .italic()
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.leading)
                }
                Spacer()
            }
    }
}




/*
 
 struct DetailView: View {
     @Binding var eatery: Eatery
     var body: some View {
         TextField("Enter person name", text: $eatery.name, onCommit: {
             EateriesApp.save()
         })
     }
 }
 
 
 
 struct EateryRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
                    EateryRow(food: cottonCandy)
                    EateryRow(food: cupcake)
                }
                .previewLayout(.fixed(width: 300, height: 70))
    }
}
*/


