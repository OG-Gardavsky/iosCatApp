//
//  infoRow.swift
//  iosCatApp
//
//  Created by  Ondrej Gardavsky on 13.06.2022.
//

import SwiftUI


struct BreedInfoRow: View {
    let name: String
    let value: String
    
    var body: some View {
        HStack {
            Text("\(name)")
            Text("\(value)")
        }
        
    }
}
