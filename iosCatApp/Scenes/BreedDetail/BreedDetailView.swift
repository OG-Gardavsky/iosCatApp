//
//  BreedDetailView.swift
//  iosCatApp
//
//  Created by  Ondrej Gardavsky on 13.06.2022.
//

import SwiftUI
import WebKit

struct BreedDetailView: View {
    let breed: Breed
    @State private var showWiki = false
    
    
    
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading, spacing: 8) {
                Text(breed.name)
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
                            HStack(alignment: .center) {
                                ProgressView()
                            }
                            
                            
                        }
                    )
                } else  {
                    Image("placeholder-image")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                
                Text(breed.description)
                Divider()
                
                BreedInfoRow(name: "Origin", value: breed.origin)
                BreedInfoRow(name: "Temperament", value: breed.temperament)
                BreedInfoRow(name: "Weight", value: "\(breed.weight.imperial) lb")
//                BreedInfoRow(name: "Metric Weight", value: breed.weight.metric)
                
                if breed.altNames != nil {
                    BreedInfoRow(name: "Alt names", value: breed.altNames!)
                }
                if breed.lifeSpan != nil {
                    BreedInfoRow(name: "Life span", value: "\(breed.lifeSpan!) years")
                }
                
                if (breed.wikipediaUrl != nil) {
                    Divider()
                    HStack {
                        
                        Text("Read more on")
                        Button("Wikipedia") {
                            showWiki = true
                        }
                    }
                }
                
                
                
            }
            .padding(8)
        }
        .sheet(isPresented: $showWiki) {
            WebView(url: breed.wikipediaUrl.unsafelyUnwrapped)
        }
        
        
   
    }
}
