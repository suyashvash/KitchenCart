//
//  HomeView.swift
//  KitchenCart
//
//  Created by Suyash Vashishtha on 13/11/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(){
            HStack{
                VStack(alignment:.leading){
                    Text("Choose your ✨")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                    Text("New Kitchen Asthetics")
                        .font(.system(size: 20))
                    
                }
                Spacer()
                NavigationLink(
                    destination: Text("Search Screen"),
                    label:{
                        Image(systemName: "magnifyingglass")
                                .resizable()
                                .frame(width: 20, height: 20)
                    }
                )
                
            }
            
            VStack(alignment:.leading){
                Text("Categories")
                    .fontWeight(.bold)
                HStack{
                    CategoryCard()
                    CategoryCard()
                    CategoryCard()

                }
                .padding(.top,10)
                
            }
            .frame(
                minWidth: 0,
                maxWidth: .infinity,
                alignment: .topLeading
              )
            .padding(.top,30)
            
            
            VStack(alignment:.leading){
                Text("Latest Pick")
                    .fontWeight(.bold)
                HStack(alignment:.center){
                    ProductTile(
                        title: "Regualar Pan", 
                        price: "$ 32.405",
                        id: "1231abbs"
                    )
                    ProductTile(
                        title: "Regualar Pan",
                        price: "$ 32.405",
                        id: "1231abbs"
                    )
                }
                .padding(.top,10)
                HStack(alignment:.center){
                    ProductTile(
                        title: "Regualar Pan",
                        price: "$ 32.405",
                        id: "1231abbs"
                    )
                    ProductTile(
                        title: "Regualar Pan",
                        price: "$ 32.405",
                        id: "1231abbs"
                    )
                }
                .padding(.top,10)
                
            }
            .frame(
                minWidth: 0,
                maxWidth: .infinity,
                alignment: .topLeading
              )
            .padding(.vertical,30)

           
          
        }.frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .topLeading
          )
      .padding(.all,20)
        

    }
}




#Preview {
    HomeView()
}
