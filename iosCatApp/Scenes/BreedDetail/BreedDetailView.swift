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
                
//                Button("wiki") {
//                    print("tipped")
//                    print("\(breed)")
//                    showWiki = true
//                }
                
                
                
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
                
                if breed.altNames != nil {
                    BreedInfoRow(name: "Alt names", value: breed.altNames!)
                }
                if breed.weightImperial != nil {
                    BreedInfoRow(name: "Weight imperial", value: breed.weightImperial!)
                }
                
                if breed.lifeSpan != nil {
                    BreedInfoRow(name: "Life span", value: breed.lifeSpan!)
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
