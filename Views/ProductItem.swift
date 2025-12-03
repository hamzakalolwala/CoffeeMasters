//
//  ProductItem.swift
//  CoffeeMasters
//
//  Created by Hamza Badri on 21/09/25.
//

import SwiftUI


struct ProductItem: View {
    var product: Product
    
    var body: some View {
        VStack{
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 150)
                .background(Color("AccentColor"))
            HStack {
                VStack(alignment: .leading) {
                    Text(product.name)
                        .font(.title3)
                        .bold()
                    Text("$ \(product.price, specifier: "%.2f")")
                        .font(.caption)

                }.padding(8)
                Spacer()
            }
        }
        .background(Color("SurfaceBackground"))
        .cornerRadius(10)
        .padding(.trailing)

    }
}


#Preview {
    ProductItem(product: Product(id: 1, name: "Cappacino", description: "tasty very very tasty", price: Double(Int(1.25)), image: "Cappacino"))
}
