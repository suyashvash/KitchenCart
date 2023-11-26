//
//  LoginView.swift
//  KitchenCart
//
//  Created by Suyash Vashishtha on 10/11/23.
//

import SwiftUI




struct LoginView: View {
    
    @ObservedObject var user = User()
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var showAlert = false
    
    
    struct LoginResponse: Codable {
        let success: Bool
        let data: UserData
        let message: String
        let statusCode: Int
    }

    struct UserData: Codable {
        let loggedIn: Bool
        let token: String
    }

    func onLoginPress () {
        if email.isEmpty && password.isEmpty {
          showAlert = true
      } else {
          guard let url = URL(string:"https://kitchen-cart-backend.onrender.com/api/users/login") else {
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
                  let response = try JSONDecoder().decode(LoginResponse.self, from: data)
                  print(response.data.token)
                  
                 
              }
              catch{
                  print(error)
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
            
            Text("Welcome Back !")
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
//                
//                
//                NavigationButton(
//                    destination: {
//                        MainApp()
//                    },
//                    label: "Login"
//                )
//                
                Button(
                    action: {
//                        withAnimation(.easeInOut(duration:1.0)){
//                            self.user.loggedIn = true
//                        }
                        onLoginPress()
                    },
                    label:{
                        Text("Login")
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
                    destination: SignupView(),
                    label:{
                        Text("Don't have an account ? Register Now !")
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
                        title: Text("Login"),
                        message: Text("Please enter valid email and password"),
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
    LoginView()
}
