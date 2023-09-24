//
//  CoinDetailsObject.swift
//  networkmastry
//
//  Created by Pardip Bhatti on 24/09/23.
//

import Foundation

struct CoinDetailsObject: Decodable {
    let id: String
    let symbol: String
    let name: String
    let description: Description
}

struct Description: Decodable {
    let text: String

    enum CodingKeys: String, CodingKey {
        case text = "en"
    }
}
