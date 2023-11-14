//
//  SignupView.swift
//  KitchenCart
//
//  Created by Suyash Vashishtha on 10/11/23.
//

import SwiftUI

struct SignupView: View {
    
    @State private var username : String  = ""
    @State private var password : String = ""
    @State private var confirmPassword : String = ""
    
    
    var body: some View {
        VStack{
            Image("icon")
                .resizable()
                .frame(width: 100,height:100,alignment: .center)
            
            Text("Create Account !")
                .foregroundColor(.white)
                .font(.system(size:30))
                .fontWeight(.bold)
                .padding(.bottom,30)
            
            VStack(alignment:.leading){
                Text("Email")
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                    .padding(10)
                TextField("Ex - John", text: $username)
                    .font(.system(size:18))
                      .foregroundColor(.white)
                      .padding(.vertical,0)
                      .padding(.horizontal,10)
                      .cornerRadius(10)
                
             
                Divider()
                 .frame(height: 1)
                 .padding(.horizontal, 30)
                 .background(Color.gray)
                 .padding(10)
                
                Text("Password")
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                    .padding(10)
                SecureField("Your Password", text: $password)
                    .font(.system(size:18))
                      .foregroundColor(.white)
                      .padding(.vertical,0)
                      .padding(.horizontal,10)
                      .cornerRadius(10)
             
                Divider()
                 .frame(height: 1)
                 .padding(.horizontal, 30)
                 .background(Color.gray)
                 .padding(10)
                
                
                Text("Confirm Password")
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                    .padding(10)
                SecureField("Re Password", text: $confirmPassword)
                    .font(.system(size:18))
                      .foregroundColor(.white)
                      .padding(.vertical,0)
                      .padding(.horizontal,10)
                      .cornerRadius(10)
             
                Divider()
                 .frame(height: 1)
                 .padding(.horizontal, 30)
                 .background(Color.gray)
                 .padding(10)
                
                
                NavigationButton(
                    destination: {
                        LoginView()
                    },
                    label: "Register"
                )
                
                
                NavigationLink(
                    destination: LoginView(),
                    label:{
                        Text("Already have account ? Login here")
                            .font(.system(size: 14))
                            .foregroundColor(.white)
                            .padding(.top,20)
                    }
                
                )
                .frame(
                    minWidth: 0,
                    maxWidth: .infinity,
                    alignment: .center
                  )
                
        
            }

            .padding(10)

                
        }
        .frame(
              minWidth: 0,
              maxWidth: .infinity,
              minHeight: 0,
              maxHeight: .infinity,
              alignment: .center
            )
        .padding(.all,10)
        
        .background(backgroundColor)
    }
}


#Preview {
    SignupView()
}
