//
//  networkmastryTests.swift
//  networkmastryTests
//
//  Created by Pardip Bhatti on 24/09/23.
//

import XCTest
@testable import networkmastry

final class networkmastryTests: XCTestCase {

    func testDecodeCoinsIntoArray() throws {
        do {
            
        let coins = try JSONDecoder().decode([Coin].self, from: testCoinsData)
        XCTAssertTrue(coins.count > 0)
        XCTAssertEqual(coins.count, 20)
        XCTAssertEqual(coins, coins.sorted(by: { $0.marketCapRank < $1.marketCapRank }))
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
}
