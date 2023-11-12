//
//  ContentView.swift
//  KitchenCart
//
//  Created by Suyash Vashishtha on 10/11/23.
//

import SwiftUI



struct ContentView: View {
    
    @ObservedObject var user = User()
    
    var body: some View {
        NavigationView{
            WelcomeView()
        }
        
    }
}

#Preview {
    ContentView()
}
