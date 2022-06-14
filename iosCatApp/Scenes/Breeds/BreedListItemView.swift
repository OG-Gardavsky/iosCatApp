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
            
            Text(breed.name!)
                .font(.title2)
                .foregroundColor(.black)
            
            
            
            if breed.image?.url != nil{
                AsyncImage(
                    url: URL(string: breed.image!.url!),
                    content: { image in
                        image.resizable()
                             .aspectRatio(contentMode: .fit)
                    },
                    placeholder: {
                        ProgressView()
                    }
                )
            }
            
            
        }
        .padding(12)
        
        
        
    }
}

