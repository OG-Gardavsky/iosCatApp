//
//  BreedListItemView.swift
//  iosCatApp
//
//  Created by  Ondrej Gardavsky on 06.06.2022.
//

import SwiftUI
import SDWebImageSwiftUI

struct BreedListItemView: View {
    let breed: Breed
    
    var body: some View {
        
        WebImage(url: breed.image.url)
            .placeholder {
                ProgressView()
            }
//            .resizable()
//            .aspectRatio(contentMode: .fill)
//            .clipShape(RoundedRectangle(cornerRadius: 8))
//            .frame(width: 110, height: 110)
        
        Text(breed.name)
    }
}

