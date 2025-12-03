//
//  KitchenPage.swift
//  CoffeeMasters
//
//  Created by Hamza Badri on 03/12/25.
//

import SwiftUI

struct KitchenPage: View {
    @EnvironmentObject var orderManager: OrderManager
    
    var body: some View {
        NavigationView {
            List {
                if orderManager.orders.count == 0 {
                    Text("No active orders")
                } else {
                    ForEach(orderManager.orders) { order in
                        Section(header: Text("\(order.name) - \(order.phone)")) {
                            ForEach(order.items, id: \.0.id) { item in
                                HStack {
                                    Text("\(item.1)x")
                                    Text(item.0.name)
                                    Spacer()
                                }
                            }
                            HStack {
                                Spacer()
                                Text("Total: $ \(order.total, specifier: "%.2f")")
                                    .bold()
                            }
                            Button("Mark as Completed") {
                                orderManager.markAsCompleted(order: order)
                            }
                            .foregroundColor(.blue)
                        }
                    }
                }
            }
            .navigationTitle("Kitchen Orders")
        }
    }
}

#Preview {
    KitchenPage()
        .environmentObject(OrderManager())
}
