//
//  CoinDataService.swift
//  networkmastry
//
//  Created by Pardip Bhatti on 23/09/23.
//

import Foundation

let jsonString = """
[
  {
    "id": "bitcoin",
    "symbol": "btc",
    "name": "Bitcoin",
    "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
    "current_price": 26554,
    "market_cap": 517673931666,
    "market_cap_rank": 1,
  },
  {
    "id": "ethereum",
    "symbol": "eth",
    "name": "Ethereum",
    "image": "https://assets.coingecko.com/coins/images/279/large/ethereum.png?1595348880",
    "current_price": 1589.22,
    "market_cap": 191104269218,
    "market_cap_rank": 2,
  },
  {
    "id": "tether",
    "symbol": "usdt",
    "name": "Tether",
    "image": "https://assets.coingecko.com/coins/images/325/large/Tether.png?1668148663",
    "current_price": 0.999608,
    "market_cap": 83179985183,
    "market_cap_rank": 3,
  }
]

"""

class CoinDataService {
    private let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=20&page=1&sparkline=false&price_change_percentage=24h&locale=en"
    
    
    func fetchCoins() async throws -> [Coin] {
        guard let url = URL(string: urlString) else { return []}
        let (data, response) = try await URLSession.shared.data(from: url)
      
        guard let httpResponse = response as? HTTPURLResponse else {
            throw CoinApiError.requestFailed(description: "Request failed")
        }
        
        guard httpResponse.statusCode == 200 else {
            throw CoinApiError.invalidStatusCode(statusCode: httpResponse.statusCode)
        }
        
//        let data = jsonString.data(using: .utf8)!
        
        do {
            let coins = try JSONDecoder().decode([Coin].self, from: data)
            return coins
        } catch let error {
            print("DEBUG: Erorr \(error)")
            throw error as? CoinApiError ?? .unkownError(error: error)
        }
    }
    
    func fetchCoinDetails(id: String) async throws -> CoinDetailsObject? {
        let detailsUrl = "https://api.coingecko.com/api/v3/coins/\(id)"
        guard let url = URL(string: detailsUrl) else { return nil}
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse else {
            throw CoinApiError.requestFailed(description: "Request failed")
        }
        
        guard httpResponse.statusCode == 200 else {
            throw CoinApiError.invalidStatusCode(statusCode: httpResponse.statusCode)
        }
        
        do {
            let coin = try JSONDecoder().decode(CoinDetailsObject.self, from: data)
            return coin
        } catch let error {
            print("DEBUG: Erorr \(error)")
            throw error as? CoinApiError ?? .unkownError(error: error)
        }
    }
}

extension CoinDataService {
    // MARK: - Completion Handlers
    
    func fetchCoinsWithResult(completion: @escaping(Result<[Coin], CoinApiError>) -> Void) {
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
           
            if let error = error {
                completion(.failure(.unkownError(error: error)))
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse else {
                completion(.failure(.requestFailed(description: "Request failed")))
                return
            }
            
            guard httpResponse.statusCode == 200 else {
                completion(.failure(.invalidStatusCode(statusCode: httpResponse.statusCode)))
                return
            }
            
            guard let data = data else {
                completion(.failure(.invalidData))
                return
            }
            
            do {
                let coins = try JSONDecoder().decode([Coin].self, from: data)
                completion(.success(coins))
            } catch let error {
                print("DEBUG: Failed to decode with error \(error)")
                completion(.failure(.jsonParsingFailure))
            }
            
        }.resume()
    }
    
    
    func fetchPrice(coin: String, currency: String, completion: @escaping(Double) -> Void)  {
        
        let urlString = "https://api.coingecko.com/api/v3/simple/price?ids=\(coin)&vs_currencies=\(currency)"
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
                if let error  = error {
                    print("DEBUG: Failed with error \(error.localizedDescription)")
                    //                self.errorMessage = error.localizedDescription
                    return
                }
                
                guard let httpResponse = response as? HTTPURLResponse else {
//                    self.errorMessage = "Bad HTTP Response"
                    return
                }
                
                guard httpResponse.statusCode == 200 else {
//                    self.errorMessage = "Failed to fetch with status code \(httpResponse.statusCode)"
                    return
                }
            
                
                guard let data = data else { return }
                guard let jsonObject = try? JSONSerialization.jsonObject(with: data) as? [String: Any] else { return }
                guard let value = jsonObject[coin] as? [String: Double] else {
                    print("failed")
                    return
                }
                guard let price = value[currency] else { return }
                completion(price)
        }.resume()
            
    }
}
