//
//  ProductTIleView.swift
//  KitchenCart
//
//  Created by Suyash Vashishtha on 14/11/23.
//

import SwiftUI

struct ProductTile: View {
    let product : Product
    
    var body: some View {
        NavigationLink(
            destination: ProductDetailView(product: product),
            label: {
                VStack(alignment:.center){
                    Image(product.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.bottom,5)
                        .cornerRadius(10)
                    VStack{
                        Text(product.name)
                            .font(.system(size: 14))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .frame(width: 100)
                            .lineLimit(1) // Set the maximum number of lines
                                            .truncationMode(.tail)
                        Text(product.price)
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
                .shadow(color: whitesmoke, radius: 5, x: 1, y: 1)
            }
        )
        .accentColor(Color.black)
    }
}

#Preview {
    ProductTile(product: demoProduct)
}
