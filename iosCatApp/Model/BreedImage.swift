//
//  BreedImage.swift
//  iosCatApp
//
//  Created by  Ondrej Gardavsky on 13.06.2022.
//

import Foundation

struct BreedImage: Identifiable, Decodable {
    let id: String
    let width: Int
    let height: Int
    let life_span: String
}
