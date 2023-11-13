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
        .onAppear {
            let appearance = UITabBarAppearance()
            appearance.backgroundColor = UIColor.black
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
       
        
    }
}

#Preview {
    MainApp()
       
}
