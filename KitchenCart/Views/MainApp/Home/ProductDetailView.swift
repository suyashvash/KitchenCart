//
//  ProductDetailView.swift
//  KitchenCart
//
//  Created by Suyash Vashishtha on 14/11/23.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product : Product
    
    var body: some View {
        ScrollView(){
            Image(product.image)
                .resizable()
                .frame(
                    width: .infinity,
                    height: 250
                )
                .aspectRatio(contentMode: .fill)
            
            VStack(alignment:.leading){
                Text(product.brand)
                    .foregroundStyle(.gray)
                    .font(.system(size: 16))
                    .padding(.bottom,1)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(product.name)
                    .font(.system(size: 22))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(product.description)
                    .foregroundStyle(.gray)
                    .font(.system(size: 16))
                    .padding(.top,2)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("Rating")
                    .font(.system(size: 16))
                    .padding(.top,10)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .font(.system(size: 24))
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .font(.system(size: 24))

                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .font(.system(size: 24))
                }.padding(.top,5)
                
                
                
                Text("Realted Products")
                    .font(.system(size: 16))
                    .padding(.top,20)
                    .frame(maxWidth: .infinity, alignment: .leading)
                ScrollView(.horizontal){
                    HStack(spacing:10){
                        Image("teaPan")
                            .resizable()
                            .cornerRadius(10)
                            .frame(width: 120, height: 120)
                        
                        Image("teaPan")
                            .resizable()
                            .cornerRadius(10)
                            .frame(width: 120, height: 120)
                        
                        Image("teaPan")
                            .resizable()
                            .cornerRadius(10)
                            .frame(width: 120, height: 120)
                    }
                }
                
                HStack{
                    VStack(alignment:.leading){
                        Text("Total Price")
                            .foregroundStyle(.gray)
                            .font(.system(size: 16))
                            .padding(.bottom,1)
                            .frame(alignment: .leading)
                        Text(product.price)
                            .font(.system(size: 22))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
    
                    Button(
                        action: {
                          //
                        },
                        label:{
                            Text("+ Add to Cart")
                                .font(.system(size: 16))
                                .frame(
                                    width: 170,
                                    height: 50,
                                    alignment: .center
                                )
                                .foregroundColor(.white)
                                .background(Color.black)
                                .cornerRadius(8)
                        }
    
    
                    )

                   
                }.padding(.vertical,20)
               
                
                
            }
            .frame(
                minWidth: 0,
                maxWidth: .infinity              )
            .padding(20)
        }.navigationTitle("Details")
        
    }
}

#Preview {
    ProductDetailView(
        product: demoProduct
    )
}
