//
//  Breed.swift
//  iosCatApp
//
//  Created by  Ondrej Gardavsky on 06.06.2022.
//

import Foundation

struct Breed: Identifiable, Codable, CustomStringConvertible {
    let id: String
    let name: String
    let temperament: String
    let lifeSpan: String?
    let altNames: String?
    let wikipediaUrl: URL?
    let origin: String
    let weightImperial: String?
    let description: String
    let image: BreedImage?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case temperament
        case lifeSpan = "life_span"
        case altNames = "alt_names"
        case wikipediaUrl = "wikipedia_url"
        case origin
        case weightImperial = "weight_imperial"
        case description
        case image
        
    }
}





extension Breed {
    static let mockList: [Breed] = [
        .init(
            id: "da",
            name: "some cat",
            temperament:  "friendly",
            lifeSpan: "4",
            altNames: "other cat",
            wikipediaUrl: URL(string: "https://en.wikipedia.org/wiki/Abyssinian_(cat)"),
            origin: "Izrael",
            weightImperial: "0.5",
            description: "lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum",
            image: .init(id: "ozEvzdVM-", width: 1200, height: 800, url: "https://cdn2.thecatapi.com/images/ozEvzdVM-.jpg")
        ),
        .init(
            id: "das",
            name: "some cat3",
            temperament:  "friendly",
            lifeSpan: "4",
            altNames: "other cat",
            wikipediaUrl: URL(string: "https://en.wikipedia.org/wiki/Abyssinian_(cat)"),
            origin: "Izrael",
            weightImperial: "0.5",
            description: "lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum",
            image: .init(id: "ozEvzdVM-", width: 1200, height: 800, url: "https://cdn2.thecatapi.com/images/ozEvzdVM-.jpg")
        ),
    ]
}
