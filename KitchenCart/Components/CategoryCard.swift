//
//  CategoryCard.swift
//  KitchenCart
//
//  Created by Suyash Vashishtha on 14/11/23.
//

import SwiftUI

struct CategoryCard: View {
    let category : String
    
    var body: some View {
        VStack{
            Image(category.lowercased())
                .resizable()
                .frame(width: 30,height:30,alignment: .center)
               
            Text(category)
                .font(.system(size: 14))
        
        }
        .frame(
            width: 80,
            height: 80
        )
 
        .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(whitesmoke, lineWidth: 1)
            )
        .background(.white)
        .padding(.trailing,10)
        .shadow(color: whitesmoke, radius: 5, x: 1, y: 1)

    }
}

#Preview {
    CategoryCard(category:"Utensils")
}
