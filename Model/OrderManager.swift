//
//  OrderManager.swift
//  CoffeeMasters
//
//  Created by Hamza Badri on 03/12/25.
//

import Foundation

class OrderManager: ObservableObject {
    @Published var orders: [Order] = []
    
    func addOrder(name: String, phone: String, items: [(Product, Int)], total: Double) {
        let newOrder = Order(name: name, phone: phone, items: items, total: total)
        orders.append(newOrder)
    }
    
    func markAsCompleted(order: Order) {
        if let index = orders.firstIndex(where: { $0.id == order.id }) {
            orders.remove(at: index)
        }
    }
}
