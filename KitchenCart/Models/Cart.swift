//
//  Cart.swift
//  KitchenCart
//
//  Created by Suyash Vashishtha on 14/11/23.
//

import Foundation


struct CartItem {
    let name : String
    let id : String
    let image: String
    let price : String
    let description : String
    let rating : Int
    let brand  : String
    let quantity : Int
}

let demoCartItem =  CartItem(
    name: "Regular Size Tea Pan",
    id: "123asdasd",
    image: "teaPan",
    price: "$ 302.04",
    description: "Brew the perfect cup of tea with our Elegant Stainless Steel Tea Pan. Crafted with precision and style, this regular-sized tea pan is a must-have for any tea enthusiast. Made from high-quality stainless steel, it ensures durability and even heat distribution for optimal brewing.",
    rating: 2,
    brand: "Pigeon",
    quantity: 2
)

