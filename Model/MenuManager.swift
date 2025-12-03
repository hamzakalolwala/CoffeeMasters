//
//  MenuManager.swift
//  CoffeeMasters
//
//  Created by Hamza Badri on 21/09/25.
//

import Foundation
  class MenuManager: ObservableObject {
    @Published var menu: [Category] = [Category(name: "Hot Coffee", products: [
            Product(id: 1, name: "Americano", description: "Refreshing", price: 4.75, image: "Americano"),
            Product(id: 2, name: "Cappuccino", description: "Rich", price: 1.25, image: "Cappacino"),
            Product(id: 3, name: "Latte", description: "Creamy", price: 1.25, image: "Latte"),
            Product(id: 4, name: "Espresso", description: "Strong", price: 1.25, image: "Espresso"),
            Product(id: 5, name: "Flat White", description: "Smooth", price: 1.25, image: "Flat White")])]
}

