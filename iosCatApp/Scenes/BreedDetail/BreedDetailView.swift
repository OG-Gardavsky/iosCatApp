//
//  BreedDetailView.swift
//  iosCatApp
//
//  Created by  Ondrej Gardavsky on 13.06.2022.
//

import SwiftUI

struct BreedDetailView: View {
    let breed: Breed
    
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading, spacing: 8) {
                
                
                Text(breed.name)
                    .font(.title2)
                    .foregroundColor(.black)
                
                if breed.wikipedia_url != nil {
                    Button("wiki") {
                        print("tipped")
                    }
                }
                
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
                } else  {
                    Image(systemName: "xmark.bin")
                }
                
                Text(breed.description)
                Divider()
                
                BreedInfoRow(name: "Origin", value: breed.origin)
                
                if breed.origin != nil {
                    BreedInfoRow(name: "Temperament", value: breed.temperament)
                }
                
                
                
                
                
                
                if breed.origin != nil {
                    BreedInfoRow(name: "Origin", value: breed.temperament)
                }
                
                
                
            }
            .padding(8)
        }
        
        
   
    }
}
