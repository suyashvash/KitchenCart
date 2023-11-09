//
//  WelcomeView.swift
//  KitchenCart
//
//  Created by Suyash Vashishtha on 10/11/23.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack{
            
            Text("Welcome to Kitchen Cart")
                .foregroundColor(.white)
                .font(.system(size: 33))
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("All your kitchen needs at one stop !")
                .foregroundColor(.gray)
                .font(.subheadline)
                .padding(.top,10)
                .frame(maxWidth: .infinity, alignment: .leading)
            Image("WelcomeBanner")
                .resizable()
                .frame(width: 320,height: 380,alignment: .center)
                .padding(.top,60)
            
            NavigationLink(
                destination: LoginView(),
                label:{
                    Image(systemName: "arrow.right")
                        .imageScale(.large)
                        .foregroundStyle(Color.black)
                        .frame(
                            width: 50,
                            height: 50,
                            alignment: .center
                        )
                        .background(Color.white)
                        .cornerRadius(50)
                        
                        
                }
            )
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top,60)
            .padding(.leading,30)
            
        }
        .frame(
              minWidth: 0,
              maxWidth: .infinity,
              minHeight: 0,
              maxHeight: .infinity,
              alignment: .topLeading
            )
        .padding(.all,20)
        
        .background(Color(hex:"1e1e1e"))
    }
}

#Preview {
    WelcomeView()
}
