//
//  OrderConfirmationView.swift
//  KitchenCart
//
//  Created by Suyash Vashishtha on 15/11/23.
//

import SwiftUI

struct OrderConfirmationView: View {

    
    var body: some View {
        VStack {
                   Image(systemName: "checkmark.circle.fill")
                       .resizable()
                       .aspectRatio(contentMode: .fit)
                       .frame(width: 100, height: 100)
                       .foregroundColor(.green) // Set the color if needed

                   Text("Order Confirmed")
                        .font(.system(size: 22))
                        .padding(20)
                        .foregroundStyle(darkGreen)
            
                    NavigationButton(
                        destination: {
                            MainApp()
                        },
                        label: "Go Home",
                        buttonWidth:200,
                        theme:"dark"
              
                    )
               }
             
    }
}

#Preview {
    OrderConfirmationView()
}
