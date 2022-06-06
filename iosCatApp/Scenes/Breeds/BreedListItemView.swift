//
//  BreedListItemView.swift
//  iosCatApp
//
//  Created by  Ondrej Gardavsky on 06.06.2022.
//

import SwiftUI

struct BreedListItemView: View {
    let breed: Breed
    
    var body: some View {
        Text(breed.name)
    }
}

