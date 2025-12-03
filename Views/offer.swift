//
//  offer.swift
//  CoffeeMasters
//
//  Created by Hamza Badri on 19/09/25.
//

import SwiftUI

struct Offer: View {
    var title = "My Offer"
    var description = "this is a description"
    var body: some View {
        ZStack{Image("BackgroundPattern")
            VStack{
                
                Text(title)
                    .padding(.top)
                    .padding(.bottom)
                    .padding(.leading)
                    .padding(.trailing)
                    .font(.largeTitle)
                    .background(Color("CardBackground"))
                Text(description)
                    .background(Color("CardBackground"))
                    .padding(.top)
                    .padding(.bottom)
                    .padding(.leading)
                    .padding(.trailing)
                
                
            }
        }
    }
}

struct Offer_Previews: PreviewProvider{
    static var previews: some View {
        Offer(title: "My Offer", description: "this is a description")
    }
}


