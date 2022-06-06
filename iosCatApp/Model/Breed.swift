//
//  Breed.swift
//  iosCatApp
//
//  Created by  Ondrej Gardavsky on 06.06.2022.
//

import Foundation

struct Breed: Identifiable {
    let id: String
    let name: String
    let temperament: String
    let life_span: String
    let alt_names: String
    let wikipedia_url: String
    let origin: String
    let weight_imperial: String
    let description: String
    
}

extension Breed {
    static let mockList: [Breed] = [
        .init(
            id: "da",
            name: "some cat",
            temperament:  "friendly",
            life_span: "4",
            alt_names: "other cat",
            wikipedia_url: "wiku",
            origin: "Izrael",
            weight_imperial: "0.5",
            description: "lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum"
        ),
        .init(
            id: "das",
            name: "some cat 1",
            temperament:  "friendly",
            life_span: "4",
            alt_names: "other cat",
            wikipedia_url: "wiku",
            origin: "Izrael",
            weight_imperial: "0.5",
            description: "lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum"
        )
    ]
}
