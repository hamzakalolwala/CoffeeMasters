//
//  OffersPage.swift
//  CoffeeMasters
//
//  Created by Hamza Badri on 19/09/25.
//

import SwiftUI

struct OffersPage: View {
    var body: some View {
        NavigationView {
            List {
                Offer(title: "Early Coffee", description: "10% off. Offer valid from 6am to 9am.")
                Offer(title: "Welcome Gift", description: "25% off on your first order.")
            }
            .listStyle(.plain)
            .listRowSeparator(.hidden)
            .navigationTitle("Offers")
        }
        
    }
}
    


struct OffersPage_Previews: PreviewProvider {
    static var previews: some View{
        OffersPage()
    }
}
//preview code for fm
