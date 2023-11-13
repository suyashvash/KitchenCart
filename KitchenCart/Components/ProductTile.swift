//
//  ProductTile.swift
//  KitchenCart
//
//  Created by Suyash Vashishtha on 13/11/23.
//

import Foundation
import SwiftUI



struct ProductTile : View {
    
    let title : String
    let price : String
    let id : String
    
    var body: some View {
        VStack(alignment:.center){
            Image("teaPan")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.bottom,5)
                .cornerRadius(10)
            VStack{
                Text(title)
                    .font(.system(size: 14))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text(price)
                    .font(.system(size: 12))
                    .fontWeight(.thin)
            }.padding(.bottom,10)
        }
        
        .frame(width: 150)
        .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(whitesmoke, lineWidth: 1)
            )
        .background(.white)
        .padding(.trailing,10)
        .shadow(color: whitesmoke, radius: 5, x: 1, y: 1)

    }
}
