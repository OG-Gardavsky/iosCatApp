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
        
        if breed.wikipedia_url != nil {
            Button("wiki") {
                print("tipped")
            }
        }
        
        Button("wiki") {
            print("tipped")
            print("\(breed)")
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
    }
}
