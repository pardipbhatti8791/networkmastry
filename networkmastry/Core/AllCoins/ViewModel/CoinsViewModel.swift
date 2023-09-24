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
        Task { await fetchCoins() }
    }
  
    @MainActor
    func fetchCoins() async  {
        do {
            self.coins = try await service.fetchCoins()
        } catch {
            guard let error = error as? CoinApiError else { return }
            self.errorMessage = error.customDescription
        }
    }
    
    func fetchCoinsWithCompletionHandler() {
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
