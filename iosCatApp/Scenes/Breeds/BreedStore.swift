//
//  BreedStore.swift
//  iosCatApp
//
//  Created by  Ondrej Gardavsky on 12.06.2022.
//

import Foundation
import SwiftUI

@MainActor final class BreedStore: ObservableObject {
    enum State {
        case initial
        case loading
        case finished
        case failed
    }

    @Published var state: State = .initial
    @Published var breeds: [Breed] = .init()

    private lazy var apiManager = APIManager()
}

// MARK: Actions
extension BreedStore {
    func load() async {
        state = .loading

        await fetch()
    }

}

// MARK: Fetching
private extension BreedStore {
    func fetch(page: Int? = nil) async {
        let endpoint = BreedRouter.getBreeds

        do {

            let response = try await apiManager.request(endpoint)
            let object = try  apiManager.decoder.decode([Breed].self, from: response)
            
            breeds = object
            state = .finished

        } catch {
            Logger.log("\(error)", .error)
            state = .failed
        }
    }
}

