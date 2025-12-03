//
//  ContentView.swift
//  CoffeeMasters
//
//  Created by Hamza Badri on 16/09/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
    
        TabView(){
            MenuPage()
                .tabItem {
                    Text("Menu")
                    Image(systemName: "cup.and.saucer")
                        }
            OffersPage()
                .tabItem {
                    Text("Offers")
                    Image(systemName: "tag")
                }
         
            OrdersPage()
                .tabItem {
                    Text("My Orders")
                    Image(systemName: "cart")
                }
            InfoPage()
                .tabItem{
                    Text("Info")
                    Image(systemName: "info.circle")
                }
            KitchenPage()
                .tabItem {
                    Text("Kitchen")
                    Image(systemName: "list.bullet.clipboard")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View{
        ContentView()
            .environmentObject(MenuManager())
            .environmentObject(CartManager())
            .environmentObject(OrderManager())
    }
}
