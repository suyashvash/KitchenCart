//
//  CategoryCard.swift
//  KitchenCart
//
//  Created by Suyash Vashishtha on 13/11/23.
//

import Foundation
import SwiftUI


struct CategoryCard : View {
    var body: some View {
        VStack{
            Image("utensils")
                .resizable()
                .frame(width: 40,height:40,alignment: .center)
            Text("Utensils")
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
