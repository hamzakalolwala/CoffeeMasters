//
//  Category.swift
//  CoffeeMasters
//
//  Created by Hamza Badri on 21/09/25.
//

import Foundation
struct Category: Identifiable, Codable {
    var id: String { name }
    var name: String
    var products: [Product]
}
