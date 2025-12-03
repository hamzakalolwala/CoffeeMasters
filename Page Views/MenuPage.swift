//
//  MenuPage.swift
//  CoffeeMasters
//
//  Created by Hamza Badri on 21/09/25.
//

import SwiftUI

struct MenuPage: View {
    
    @EnvironmentObject var menuManager: MenuManager
    
    var body: some View {
        VStack {
            NavigationView {
                    List {
                        if menuManager.menu.count == 0 {
                            HStack {
                                Text("We couldn't fetch the data")
                                Button("Reload") {
                                }
                            }
                        } else {
                            ForEach(menuManager.menu) { category in
                                if category.products.count > 0 {
                                    Text(category.name)
                                    .listRowBackground(Color("Background"))
                                    .foregroundColor(Color("Secondary"))
                                    .padding()
                                }
                                
                                ForEach(category.products) { item in
                                    ZStack {
                                        NavigationLink(destination: DetailsPage(product: item)) {
                                            EmptyView()
                                        }.opacity(0)
                                        ProductItem(product: item)
                                            .padding(.top)
                                            .padding(.leading)
                                            .padding(.bottom, 12)

                                    }
                                    
                                }
                            }
                            .listRowInsets(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
                            .listRowSeparator(.hidden)
                            .listRowBackground(Color("Background"))
                        }
                    }
                    .listStyle(.insetGrouped)
                    .navigationTitle("Products")
                    .background(Color("SurfaceBackground"))
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
#Preview {
    MenuPage()
        .environmentObject(MenuManager())
}
