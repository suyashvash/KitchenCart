//
//  CartView.swift
//  KitchenCart
//
//  Created by Suyash Vashishtha on 13/11/23.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        ScrollView{
            VStack(){
                Text("My Cart")
                    .font(.system(size: 30))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom,30)
                CartTile(item:demoCartItem)
                CartTile(item:demoCartItem)
                
                
            }
            .padding(20)
        }
    }
}

#Preview {
    CartView()
}
