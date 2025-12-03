//
//  Product.swift
//  CoffeeMasters
//
//  Created by Hamza Badri on 21/09/25.
//

import Foundation

struct Product: Identifiable, Codable {
    var id: Int
    var name: String
    var description: String?
    var price: Double
    var image: String = ""
    
    var imageURL: URL {
        URL(string: "https://firtman.github.io/coffeemasters/api/images/\(self.image)")!
    }
}
