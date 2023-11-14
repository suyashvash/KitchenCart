//
//  ProfileView.swift
//  KitchenCart
//
//  Created by Suyash Vashishtha on 13/11/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView{
            VStack{
                VStack{
                    Image("user")
                        .resizable()
                        .frame(width: 80,height: 80)
                        .cornerRadius(50)
                      
           
                        Text("Suyash Vashishtha")
                            .font(.system(size: 18))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                 
                        Text("suyashvashishtha @gmail.com")
                            .font(.system(size: 16))
                            .foregroundStyle(darkGreen)
                }
                .frame(
                    maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
                    alignment: .center
                )
                .padding(.top,30)
                
                
                VStack{
                    HStack{
                        Text("My Orders")
                        Spacer()
                        Image(systemName: "arrow.right.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .foregroundColor(darkGreen) // Set the color if needed
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    
                    HStack{
                        Text("Settings")
                        Spacer()
                        Image(systemName: "arrow.right.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .foregroundColor(darkGreen) // Set the color if needed
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    
                    
                    HStack{
                        Text("About App")
                        Spacer()
                        Image(systemName: "arrow.right.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .foregroundColor(darkGreen) // Set the color if needed
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    
                    HStack{
                        Text("Help & support")
                        Spacer()
                        Image(systemName: "arrow.right.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .foregroundColor(darkGreen) // Set the color if needed
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    
                    HStack{
                        Text("Logout")
                        Spacer()
                        Image(systemName: "arrow.right.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .foregroundColor(darkGreen) // Set the color if needed
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    
                    
                }.background(.white)
                    .padding(.top,20)
                    .frame(maxWidth: 900)


            }
            .frame(maxWidth: .infinity)
   
            
                
        }
        .background(.white)
        
    }
}

#Preview {
    ProfileView()
}
