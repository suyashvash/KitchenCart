//
//  UserState.swift
//  KitchenCart
//
//  Created by Suyash Vashishtha on 13/11/23.
//

import Foundation


class User : ObservableObject{
    @Published var loggedIn = false
    @Published var email : String = ""
    @Published var username : String = ""
    @Published var userId : String = ""
}
