//
//  CheckoutView.swift
//  KitchenCart
//
//  Created by Suyash Vashishtha on 14/11/23.
//

import SwiftUI

struct CheckoutView: View {
    var body: some View {
        ScrollView{
            VStack(){
                Text("Checkout !")
                    .font(.system(size: 30))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom,30)
                    .foregroundStyle(darkGreen)
                    CheckoutItem(name: "Regular Pan", quantity: 3, price: "$ 302.06")
                    CheckoutItem(name: "Regular Pan", quantity: 3, price: "$ 302.06")
                    CheckoutItem(name: "Regular Pan", quantity: 3, price: "$ 302.06")
                    CheckoutItem(name: "Regular Pan", quantity: 3, price: "$ 302.06")
            
               
                
                
            }
            .padding(20)
            HStack{
                VStack(alignment:.leading){
                    Text("Total Quantity")
//                        .foregroundStyle(.gray)
                        .font(.system(size: 16))
                        .padding(.bottom,1)
                        .frame(alignment: .leading)
                    Text("12")
                        .font(.system(size: 22))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundStyle(darkGreen)
                }.padding(.leading,10)

                
                VStack(alignment:.trailing){
                    Text("Total Price")
//                        .foregroundStyle(.gray)
                        .font(.system(size: 16))
                        .padding(.bottom,1)
                        .frame(alignment: .trailing)
                    Text("$ 423.02")
                        .font(.system(size: 22))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .foregroundStyle(darkGreen)
                }
            }.padding(20)
            
//            Button(
//                action: {
//                  //
//                },
//                label:{
//                    Text("Confirm Order")
//                        .font(.system(size: 16))
//                        .frame(
//                            width: 300,
//                            height: 50,
//                            alignment: .center
//                        )
//                        .foregroundColor(.white)
//                        .background(Color.black)
//                        .cornerRadius(8)
//                }
//
//
//            ).padding(.top,40)
            NavigationButton(
                destination: {
                    OrderConfirmationView()
                },
                label: "Confirm Order",
                buttonWidth:350,
                theme:"dark"
      
            )


        }
    }
}


struct CheckoutItem :View {
    
    let name: String
    let quantity : Int
    let price : String
    
    var body: some View {
        HStack(alignment:.top){
            
            VStack(alignment:.leading){
                Text(name)
                    
                    .frame(width: .infinity-10)
                    .lineLimit(1)
                    .truncationMode(.tail)
                    .padding(.bottom,1)
                    .fontWeight(.bold)
                    .font(.system(size: 18))
    
                
                Text("Quantity - \(quantity)")
                    .font(.system(size: 16))
                
            }
            .frame(alignment: .topLeading)
            .padding(.leading,10)
            
            Spacer()
            Text(price)
                .fontWeight(.bold)
                .font(.system(size: 18))
                .foregroundStyle(darkGreen)
        }
        .overlay(Rectangle().frame(height: 1).padding(.top, 8).foregroundStyle(whitesmoke), alignment: .bottom)
        .frame(maxWidth: .infinity)
        .padding(.top,10)
    }
}

#Preview {
    CheckoutView()
}
