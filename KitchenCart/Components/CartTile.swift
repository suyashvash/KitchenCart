//
//  CartTile.swift
//  KitchenCart
//
//  Created by Suyash Vashishtha on 14/11/23.
//

import SwiftUI

struct CartTile: View {
    
    let item : CartItem
    
    var body: some View {
        
        HStack(alignment:.top){
            Image(item.image)
                .resizable()
                .cornerRadius(10)
                .frame(width: 80,height: 80)

            
            VStack(alignment:.leading){
                Text(item.name)
                    .font(.system(size: 16))
                    .frame(width: .infinity-10)
                    .lineLimit(1)
                    .truncationMode(.tail)
                    .padding(.bottom,1)
                Text(item.price)
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .foregroundStyle(darkGreen)
                
                HStack{
                    Button(action: {},
                           label:{
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .foregroundStyle(.black)
                          
                    })
                    .padding(10)
                    
                    Text("\(item.quantity)")
                        .font(.system(size: 18))
                        .padding(.horizontal,10)
                
                    
                    Button(action: {},
                           label:{
                        Image(systemName: "minus")
                            .resizable()
                            .frame(width: 15, height: 2)
                            .foregroundStyle(.black)
                          
                    })
                    .padding(10)
                }
      
//                        .border(Color.gray, width: 1)
                .cornerRadius(2)
            }
            .frame(alignment: .topLeading)
            .padding(.leading,10)
            
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "trash")
                    .resizable()
                    .frame(width: 20, height: 20,alignment: .center)
                    .foregroundStyle(.gray)
            })
            
            
            
        }
        .overlay(Rectangle().frame(height: 1).padding(.top, 8).foregroundStyle(whitesmoke), alignment: .bottom)
        .frame(maxWidth: .infinity)
        .padding(.top,10)
    }
}

#Preview {
    CartTile(item:demoCartItem)
}
