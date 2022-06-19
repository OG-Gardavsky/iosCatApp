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
                
            }
        }
        .navigationTitle("Breeds")
        .onFirstAppear(perform: load)
        
        
        
//        ZStack {
//            ScrollView{
//                content
//            }
//        }
//        .navigationTitle("Breeds")
        
        
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
            ForEach(store.breeds) { breed in
//            ForEach(Breed.mockList) { breed in
                
                NavigationLink(destination: BreedDetailView(breed: breed) ){
                    BreedListItemView(breed: breed)
                    
                }
            }
        }
    }
}
