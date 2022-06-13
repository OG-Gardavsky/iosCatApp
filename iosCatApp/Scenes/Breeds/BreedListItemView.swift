//
//  BreedListItemView.swift
//  iosCatApp
//
//  Created by  Ondrej Gardavsky on 06.06.2022.
//

import SwiftUI
//import SDWebImageSwiftUI

struct BreedListItemView: View {
    let breed: Breed
    
    var body: some View {
        

        
        VStack(alignment: .leading, spacing: 8) {
            
            Text(breed.name)
                .font(.title2)
                .foregroundColor(.black)
            
            Image("cat")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            
        }
        .padding(12)
        
        
        
    }
}

