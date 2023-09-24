//
//  CoinDetailsViewModel.swift
//  networkmastry
//
//  Created by Pardip Bhatti on 24/09/23.
//

import Foundation

class CoinDetailsViewModel: ObservableObject {
    private let service = CoinDataService()
    private let id: String
    
    init(coinId: String) {
        self.id = coinId
        
        Task { await fetchCoinDetails() }
    }
    
    func fetchCoinDetails() async {
        do {
            let details = try await service.fetchCoinDetails(id: id)
            print("DEBUG: details \(details)")
        } catch {
            print("DEBUG: Error\(error.localizedDescription)")
        }
    }
}
