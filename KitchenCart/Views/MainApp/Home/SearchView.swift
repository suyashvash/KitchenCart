//
//  SearchView.swift
//  KitchenCart
//
//  Created by Suyash Vashishtha on 15/11/23.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var text : String
    

    
    var body: some View {
        ScrollView{
            TextField("Search ...", text: $text)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal, 10)
            
            VStack(alignment:.leading){
                Text("Showing results - ")
                    .fontWeight(.bold)
                    .padding(.bottom,10)
                    .foregroundStyle(darkGreen)
                    .padding(.leading,20)

                LazyVGrid(
                    columns: [
                        GridItem(.flexible()), GridItem(.flexible()),
                    ],
                    alignment: .center,
                    spacing: 10,
                    pinnedViews: [],
                    content: {
                        ProductTile(product: demoProduct)
                        ProductTile(product: demoProduct)
                        ProductTile(product: demoProduct)
                        ProductTile(product: demoProduct)
                        ProductTile(product: demoProduct)
                        ProductTile(product: demoProduct)
                        ProductTile(product: demoProduct)
                        ProductTile(product: demoProduct)
                        ProductTile(product: demoProduct)
                        ProductTile(product: demoProduct)
                        ProductTile(product: demoProduct)
                        ProductTile(product: demoProduct)
                    })
                
            }
            .frame(
                minWidth: 0,
                maxWidth: .infinity
            )
            .padding(.vertical,20)
            
        }.navigationTitle("Search Products")
    }
       
}

#Preview {
    SearchView(text: .constant(""))
}
