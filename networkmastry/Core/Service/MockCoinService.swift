//
//  MockCoinService.swift
//  networkmastry
//
//  Created by Pardip Bhatti on 24/09/23.
//

import Foundation

class MockCoinService: CoinServiceProtocol {
    func fetchCoins() async throws -> [Coin] {
        return []
    }
    
    func fetchCoinDetails(id: String) async throws -> CoinDetailsObject? {
        return nil
    }
    
    
}
