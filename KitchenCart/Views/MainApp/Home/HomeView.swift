//
//  HomeView.swift
//  KitchenCart
//
//  Created by Suyash Vashishtha on 13/11/23.
//

import SwiftUI

struct HomeView: View {
    

    var body: some View {
        ScrollView{
                HStack{
                    VStack(alignment:.leading){
                        Text("Choose your ✨")
                            .font(.system(size: 16))
                            .fontWeight(.bold)
                            .foregroundStyle(darkGreen)
                        Text("New Kitchen Asthetics")
                            .font(.system(size: 20))
                        
                    }
                    Spacer()
                    NavigationLink(
                        destination: SearchView(text: .constant("")),
                        label:{
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(darkGreen)
                        }
                    )
                    
                }
                
                VStack(alignment:.leading){
                    Text("Categories")
                        .fontWeight(.bold)
                        .foregroundStyle(darkGreen)
                    ScrollView(.horizontal){
                        HStack(spacing:0){
                            CategoryCard(category: "Utensils")
                            CategoryCard(category: "Ovens")
                            CategoryCard(category: "Fridges")
                            CategoryCard(category: "Groceries")
                            CategoryCard(category: "Ovens")
                            CategoryCard(category: "Utensils")
                            
                        }
                        .padding(.vertical,10)
                    }
                   
                   
                    
                }
                .frame(
                    minWidth: 0,
                    maxWidth: .infinity,
                    alignment: .topLeading
                )
                .padding(.top,20)
                
                
                VStack(alignment:.leading){
                    Text("Latest Pick")
                        .fontWeight(.bold)
                        .padding(.bottom,10)
                        .foregroundStyle(darkGreen)

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
                        })
                    .onAppear{
                    }
                    
                }
                .frame(
                    minWidth: 0,
                    maxWidth: .infinity
                )
                .padding(.vertical,20)
                
                
                
            
            
            
        }
        .frame(maxHeight: .infinity)
        .padding([.top,.horizontal],20)

 
    }
}




#Preview {
    HomeView()
}
