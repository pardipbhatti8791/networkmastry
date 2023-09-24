//
//  CoinDetailsCache.swift
//  networkmastry
//
//  Created by Pardip Bhatti on 24/09/23.
//

import Foundation

class CoinDetailsCache {
    static let shared = CoinDetailsCache()
    private let cache = NSCache<NSString, NSData>()
    
    private init() {}
    
    func set(_ coinDetails: CoinDetailsObject, forKey key: String) {
        guard let data = try? JSONEncoder().encode(coinDetails) else { return }
        cache.setObject(data as NSData, forKey: key as NSString)
    }
    
    func get(forKey key: String) -> CoinDetailsObject? {
        guard let data = cache.object(forKey: key as NSString)  as? Data else { return  nil}
        return try? JSONDecoder().decode(CoinDetailsObject.self, from: data)
    }
}
