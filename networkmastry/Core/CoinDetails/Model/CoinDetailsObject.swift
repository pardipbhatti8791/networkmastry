//
//  CoinDetailsObject.swift
//  networkmastry
//
//  Created by Pardip Bhatti on 24/09/23.
//

import Foundation

struct CoinDetailsObject: Codable {
    let id: String
    let symbol: String
    let name: String
    let description: Description
}

struct Description: Codable {
    let text: String

    enum CodingKeys: String, CodingKey {
        case text = "en"
    }
}
