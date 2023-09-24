//
//  HttpDataDownloader.swift
//  networkmastry
//
//  Created by Pardip Bhatti on 24/09/23.
//

import Foundation

protocol HTTPDataDownloader {
    func fetchData<T: Decodable>(as type: T.Type, endpoint: String) async throws -> T
}

extension HTTPDataDownloader {
     func fetchData<T: Decodable>(as type: T.Type, endpoint: String) async throws -> T {
        guard let url = URL(string: endpoint) else {
            throw CoinApiError.requestFailed(description: "Inavlid URL")
        }
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse else {
            throw CoinApiError.requestFailed(description: "Request failed")
        }
        
        guard httpResponse.statusCode == 200 else {
            throw CoinApiError.invalidStatusCode(statusCode: httpResponse.statusCode)
        }
        
        
        do {
            return try JSONDecoder().decode(type, from: data)
        } catch let error {
            print("DEBUG: Erorr \(error)")
            throw error as? CoinApiError ?? .unkownError(error: error)
        }
    }
}
