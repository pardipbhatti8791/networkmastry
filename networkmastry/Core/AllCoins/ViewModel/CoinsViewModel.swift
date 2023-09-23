//
//  CoinsViewModel.swift
//  networkmastry
//
//  Created by Pardip Bhatti on 20/09/23.
//

import Foundation

class CoinsViewModel: ObservableObject {
    @Published var coins = [Coin]()
    @Published var errorMessage: String?
    
    private let service = CoinDataService()
    
    init() {
        fetchCoins()
    }
    
    func fetchCoins() {
        service.fetchCoinsWithResult { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let coins):
                    self?.coins = coins
                case .failure(let error):
                    self?.errorMessage = error.localizedDescription
                }
            }
        }
    }
}
