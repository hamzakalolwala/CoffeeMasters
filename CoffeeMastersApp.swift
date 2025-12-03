//
//  CoffeeMastersApp.swift
//  CoffeeMasters
//
//  Created by Hamza Badri on 16/09/25.
//

import SwiftUI

@main
struct CoffeeMastersApp: App {
    var menuManager = MenuManager()
    var cartManager = CartManager()
    var orderManager = OrderManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManager)
                .environmentObject(cartManager)
                .environmentObject(orderManager)
        }

    }
}
