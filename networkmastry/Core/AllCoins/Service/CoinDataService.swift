//
//  CoinDataService.swift
//  networkmastry
//
//  Created by Pardip Bhatti on 23/09/23.
//

import Foundation

class CoinDataService {
    private let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=20&page=1&sparkline=false&price_change_percentage=24h&locale=en"

    
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
