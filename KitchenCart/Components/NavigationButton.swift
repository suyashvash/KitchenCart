//
//  NavigationButton.swift
//  KitchenCart
//
//  Created by Suyash Vashishtha on 11/11/23.
//

import Foundation
import SwiftUI

struct NavigationButton<Destination: View>: View {
    
    @State private var isViewActive = false
    
    let destination: () -> Destination
    let label: String
    let buttonWidth: CGFloat
    let buttonHeight: CGFloat
    let theme : String
    
    init(destination: @escaping () -> Destination, label: String, buttonWidth: CGFloat = 300, buttonHeight: CGFloat = 50,theme:String = "light") {
        self.destination = destination
        self.label = label
        self.buttonWidth = buttonWidth
        self.buttonHeight = buttonHeight
        self.theme = theme
    }
    
    var body: some View {
        NavigationLink(
            destination: destination(),
            isActive: $isViewActive,
            label: {
                Text(label)
                    .frame(
                        width: buttonWidth,
                        height: buttonHeight,
                        alignment: .center
                    )
                    .foregroundColor(self.theme=="light"  ? darkGreen : .white)
                    .background(self.theme=="light"  ? .white : darkGreen)
                    .cornerRadius(8)
            }
        )
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            alignment: .center
        )
        .padding(.top, 20)
    }
}

