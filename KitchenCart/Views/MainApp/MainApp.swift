//
//  MainApp.swift
//  KitchenCart
//
//  Created by Suyash Vashishtha on 11/11/23.
//

import SwiftUI

struct MainApp: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
             
            
            CartView()
                .tabItem {
                    Label("Cart", systemImage: "cart.fill")
                }
            
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
        .navigationBarHidden(true)
        .accentColor(Color.white)
        .onAppear {
            let appearance = UITabBarAppearance()
            appearance.backgroundColor = UIColor(darkGreen)
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
          
       
        }
       
        
    }
}

#Preview {
    MainApp()
       
}
