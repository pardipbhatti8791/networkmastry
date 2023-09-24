//
//  CoinDetailsViewModel.swift
//  networkmastry
//
//  Created by Pardip Bhatti on 24/09/23.
//

import Foundation

class CoinDetailsViewModel: ObservableObject {
    private let service: CoinDataService
    private let id: String
    
    @Published var coinDetails: CoinDetailsObject?
    
    init(coinId: String, service: CoinDataService) {
        self.service = service
        self.id = coinId
    }
   
    @MainActor
    func fetchCoinDetails() async {
//        print("DEBUG: Fetching coins")
//        try? await Task.sleep(nanoseconds: 2_000_000_000)
//        print("DEBUG: Task woke up")
        
        do {
            self.coinDetails = try await service.fetchCoinDetails(id: id)
        } catch {
            print("DEBUG: Error\(error.localizedDescription)")
        }
    }
}
