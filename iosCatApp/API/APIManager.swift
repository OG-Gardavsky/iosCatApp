//
//  APIManager.swift
//  RickAndMorty
//
//  Created by Martin Vidovic on 27.04.2022.
//

import Foundation


// MARK: - Implementation
final class APIManager {
    
    private lazy var urlSession: URLSession = {
        let config = URLSessionConfiguration.default
        config.timeoutIntervalForRequest = 30
        config.timeoutIntervalForResource = 30

        return URLSession(configuration: config)
    }()

    lazy var decoder: JSONDecoder = {
        let decoder = JSONDecoder()

//        decoder.keyDecodingStrategy = .convertFromSnakeCase

        return decoder
    }()

    func request(_ endpoint: Endpoint) async throws -> Data {
        let request: URLRequest = try endpoint.asRequest()
        
        Logger.log("🚀 Request for \"\(request.description)\"")

        let (data, response) = try await urlSession.data(for: request)
        
        guard let httpResponse = response as? HTTPURLResponse else {
            throw APIError.noResponse
        }
        
        guard 200..<300 ~= httpResponse.statusCode else {
            throw APIError.unacceptableResponseStatusCode
        }
        
        // Uncomment this for pretty response logging!
        if let body = String(data: data, encoding: .utf8) {
            Logger.log("""
            ☀️ Response for \"\(request.description)\":
            👀 Status: \(httpResponse.statusCode)
            🧍‍♂️ Body:
            \(body)
            """)
        }
        

        return data
    }
}
