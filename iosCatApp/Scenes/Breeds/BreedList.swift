//
//  BreedList.swift
//  iosCatApp
//
//  Created by  Ondrej Gardavsky on 06.06.2022.
//

import SwiftUI



struct BreedList: View {
    let breeds = [
        {
            id: "1",
            name:  "neco",
            description: "lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum"
        }
    ]
    
    
    
    
    var body: some View {
        ZStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .navigationTitle("Breeds")
        
    }
}
