//
//  CoinDataService.swift
//  networkmastry
//
//  Created by Pardip Bhatti on 23/09/23.
//

import Foundation

protocol CoinServiceProtocol {
    func fetchCoins() async throws -> [Coin]
    func fetchCoinDetails(id: String) async throws -> CoinDetailsObject?
}

class CoinDataService: CoinServiceProtocol, HTTPDataDownloader {
    private var page = 0
    private let fetchLimit = 40
    
    func fetchCoins() async throws -> [Coin] {
        page += 1
        guard let endpoint = allCoinsUrlString else { throw CoinApiError.requestFailed(description: "Invalid endpoint") }
        return try await fetchData(as: [Coin].self, endpoint: endpoint)
    }
    
    func fetchCoinDetails(id: String) async throws -> CoinDetailsObject? {
        
        if let cached = CoinDetailsCache.shared.get(forKey: id) {
            print("DEBUG: Got details from cache")
            return cached
        }
            
        guard let endpoint = coinDetailsUrlString(id: id) else {
            throw CoinApiError.requestFailed(description: "Invalid endpoint")
        }
        
        let details = try await fetchData(as: CoinDetailsObject.self, endpoint: endpoint)
        
        print("DEBUG: Got details from api")
        CoinDetailsCache.shared.set(details, forKey: id)
        return details
    }
    
}

extension CoinDataService {
    private var baseUrlComponents: URLComponents {
       var components = URLComponents()
        components.scheme = "https"
        components.host = "api.coingecko.com"
        components.path = "/api/v3/coins/"
        
        return components
    }
    
    private var allCoinsUrlString: String? {
        var components = baseUrlComponents
        components.path += "markets"
        components.queryItems = [
            .init(name: "vs_currency", value: "usd"),
            .init(name: "order", value: "market_cap_desc"),
            .init(name: "per_page", value: "\(fetchLimit)"),
            .init(name: "page", value: "\(page)"),
            .init(name: "price_change_percentage", value: "24"),
            .init(name: "locale", value: "en")
        ]
        return components.url?.absoluteString
    }
    
    private func coinDetailsUrlString(id: String) -> String? {
        var components = baseUrlComponents
        components.path += "\(id)"
        components.queryItems = [
            .init(name: "localization", value: "false")
        ]
        return components.url?.absoluteString
    }
}

