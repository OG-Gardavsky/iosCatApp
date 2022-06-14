//
//  BreedList.swift
//  iosCatApp
//
//  Created by  Ondrej Gardavsky on 06.06.2022.
//

import SwiftUI



struct BreedListView: View {
    
    @StateObject var store = BreedStore()
    
    
    
    var body: some View {
        ZStack {
            ScrollView{
                
                switch store.state {
                case .finished:
                    content
                case .initial, .loading:
                    ProgressView()
                case .failed:
                    Text("🥲🥲🥲 Something went wrong")
                }
                
                content
                
                
                
                
            }
        }
        .navigationTitle("Breeds")
        .onFirstAppear(perform: load)
        
        
    }
}


extension BreedListView  {
    func load() {
        Task {
            await store.load()
        }
    }
    
    @ViewBuilder var content: some View {
        ScrollView {
            ForEach(Breed.mockList) { breed in
                
                NavigationLink(destination: BreedDetailView(breed: breed) ){
                    
                    BreedListItemView(breed: breed)
                    
                }
                
                
                
            }
        }
    }
}
