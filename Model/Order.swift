//
//  Order.swift
//  CoffeeMasters
//
//  Created by Hamza Badri on 03/12/25.
//

import Foundation

struct Order: Identifiable {
    var id = UUID()
    var name: String
    var phone: String
    var items: [(Product, Int)]
    var total: Double
    var date = Date()
}
