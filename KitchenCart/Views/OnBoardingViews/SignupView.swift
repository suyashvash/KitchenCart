//
//  SignupView.swift
//  KitchenCart
//
//  Created by Suyash Vashishtha on 10/11/23.
//

import SwiftUI

struct SignupView: View {
    
    @State private var email : String  = ""
    @State private var password : String = ""
    @State private var confirmPassword : String = ""
    @State private var showAlert = false
    @State private var alertMessage : String = "Please enter valid email passowrd"
    
    struct SignUpResponse:Codable {
        let data : String?
        let success : Bool
        let message : String
        let statusCode: Int
    }
    
    func onSignUpPress (){
        if email.isEmpty && password.isEmpty {
            showAlert = true
            return
        }
        
        if password == confirmPassword {
            alertMessage = "Password did not match with confirm passowrd"
            showAlert = true
            return
        }  else{
            guard let url = URL(string:"https://kitchen-cart-backend.onrender.com/api/users/signup") else {
                return
            }
            
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            
            let body : [String:AnyHashable] = [
                "email" : email.lowercased(),
                "password":password,
            ]
            request.httpBody = try? JSONSerialization.data(withJSONObject: body,options: .fragmentsAllowed)
            
            let task = URLSession.shared.dataTask(with: request){
                data, _, error in
                guard let data = data, error == nil else{
                    return
                }
                
                do{
                    let response = try JSONDecoder().decode(SignUpResponse.self, from: data)
                    alertMessage = response.message
                    showAlert = true
                    print(response.message)
                    
                    
                }
                catch{
                    print(error)
                    alertMessage = "Something went wrong !"
                    showAlert = true
                }
            }
            task.resume()
    
}
    }
    
    
    
    
    
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
                TextField("Ex - John @gmail.com", text: $email)
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
                
//                
//                NavigationButton(
//                    destination: {
//                        LoginView()
//                    },
//                    label: "Register"
//                )
                
                Button(
                    action: {
//                        withAnimation(.easeInOut(duration:1.0)){
//                            self.user.loggedIn = true
//                        }
                        onSignUpPress()
                    },
                    label:{
                        Text("Register")
                            .frame(
                                width: 300,
                                height: 50,
                                alignment: .center
                            )
                            .foregroundColor(.black)
                            .background(Color.white)
                            .cornerRadius(8)
                    }
                    
                
                ).frame(
                    minWidth: 0,
                    maxWidth: .infinity,
                    alignment: .center
                )
                .padding(.top, 20)
                
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
        .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Sign Up"),
                        message: Text(alertMessage),
                        dismissButton: .default(Text("OK"))
                    )
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
