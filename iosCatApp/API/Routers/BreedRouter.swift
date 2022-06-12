//
//  CharacterRouter.swift
//  RickAndMorty
//
//  Created by Martin Vidovic on 28.04.2022.
//

import Foundation

enum BreedRouter {
    case getBreeds(Void)
}

extension BreedRouter: Endpoint {
    var path: String {
        switch self {
        case .getBreeds():
            return "breeds"
        }
    }

    var urlParamaters: [String : Any]? {
        switch self {
        case .getBreeds():
            return nil
        }
    }

}
