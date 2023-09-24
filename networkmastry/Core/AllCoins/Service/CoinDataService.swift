//
//  CoinDataService.swift
//  networkmastry
//
//  Created by Pardip Bhatti on 23/09/23.
//

import Foundation

class CoinDataService: HTTPDataDownloader {
    
    func fetchCoins() async throws -> [Coin] {
        guard let endpoint = allCoinsUrlString else { throw CoinApiError.requestFailed(description: "Invalid endpoint") }
        return try await fetchData(as: [Coin].self, endpoint: endpoint)
    }
    
    func fetchCoinDetails(id: String) async throws -> CoinDetailsObject? {
        guard let endpoint = coinDetailsUrlString(id: id) else { throw CoinApiError.requestFailed(description: "Invalid endpoint") }
        return try await fetchData(as: CoinDetailsObject.self, endpoint: endpoint)
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
            .init(name: "per_page", value: "20"),
            .init(name: "page", value: "1"),
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

