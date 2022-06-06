//
//  BreedList.swift
//  iosCatApp
//
//  Created by  Ondrej Gardavsky on 06.06.2022.
//

import SwiftUI



struct BreedListView: View {
    
    
    var body: some View {
        ZStack {
            ScrollView{
                
                ForEach(Breed.mockList) { breed in
                    
                    BreedListItemView(breed: breed)
                    
                }
                
            }
        }
        .navigationTitle("Breeds")
        
    }
}
