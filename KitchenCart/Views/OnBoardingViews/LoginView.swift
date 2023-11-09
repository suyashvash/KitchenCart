//
//  LoginView.swift
//  KitchenCart
//
//  Created by Suyash Vashishtha on 10/11/23.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @FocusState private var emailFieldIsFocused: Bool

    
    var body: some View {
        VStack{
            Text("Login")
                .foregroundColor(.white)
                .font(.system(size: 28))
                .fontWeight(.bold)
            
            VStack{
                Text("Email")
                    .foregroundColor(.gray)
                    .font(.system(size: 16))
                TextField(
                        "Ex - john@exmapl.com",
                        text: $username
                    )
                    .focused($emailFieldIsFocused)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                    .border(.primary)
                    .foregroundColor(.white)
            
                
                Text("Password")
                    .foregroundColor(.gray)
                    .font(.system(size: 16))
        
            }
            .padding(.all,10)

                
        }
        .frame(
              minWidth: 0,
              maxWidth: .infinity,
              minHeight: 0,
              maxHeight: .infinity,
              alignment: .center
            )
        .padding(.all,20)
        
        .background(Color(hex:"1e1e1e"))
    }
}

#Preview {
    LoginView()
}
