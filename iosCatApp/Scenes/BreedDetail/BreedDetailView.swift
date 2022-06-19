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
                BreedInfoRow(name: "Temperament", value: breed.temperament)
                
                if breed.alt_names != nil {
                    BreedInfoRow(name: "Alt names", value: breed.alt_names!)
                }
                
                if breed.weight_imperial != nil {
                    BreedInfoRow(name: "Weight imperial", value: breed.weight_imperial!)
                }
                
                if breed.life_span != nil {
                    BreedInfoRow(name: "Life span", value: breed.life_span!)
                }
                
                
                
            }
            .padding(8)
        }
        
        
   
    }
}
