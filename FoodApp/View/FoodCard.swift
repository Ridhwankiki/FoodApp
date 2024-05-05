//
//  FoodCard.swift
//  FoodApp
//
//  Created by MacBook Pro on 16/04/24.
//

import SwiftUI

struct FoodCard: View {
    var food: Food
    
    var body: some View {
        VStack {
            ImageHeader(food: food)
            FoodHeader(food: food)
                .padding([.top, .horizontal])
            
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 149/255, green: 165/255, blue: 166/255, opacity: 0.2), lineWidth: 1.0)
        }
    }
}

#Preview {
    FoodCard(food: Food.foodData[0])
        .padding(.bottom)
}


// MARK: - ZSTACK HEADER


