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
    
    private let service:  CoinDataService
    
    init(service: CoinDataService) {
        self.service = service
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
}
