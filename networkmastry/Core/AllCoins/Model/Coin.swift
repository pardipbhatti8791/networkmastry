//
//  Coin.swift
//  networkmastry
//
//  Created by Pardip Bhatti on 23/09/23.
//

import Foundation

struct Coin: Codable, Identifiable, Hashable {
    let id: String
    let symbol: String
    let name: String
    var currentPrice: Double
    let marketCapRank: Int
    let image: String

    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCapRank = "market_cap_rank"
    }
    
}
