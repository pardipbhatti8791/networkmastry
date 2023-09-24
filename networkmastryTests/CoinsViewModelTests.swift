//
//  CoinsViewModelTests.swift
//  networkmastryTests
//
//  Created by Pardip Bhatti on 24/09/23.
//

import XCTest
@testable import networkmastry

class CoinsViewModelTests: XCTestCase {
    func testinit() {
        let service = CoinDataService()
        let viewModel = CoinsViewModel(service: service)
        
        XCTAssertNotNil(viewModel, "The view model should not be nil")
    }
    
    func testSuccessFulCoinsFetch() async {
        let service = CoinDataService()
        let viewModel = CoinsViewModel(service: service)
        
        await viewModel.fetchCoins()
        
        XCTAssertTrue(viewModel.coins.count > 0)
    }
    
    func testCoinsFetchWithInvalidJSON() async {
        
    }
    
    func throwsInvalidDataError() async {
        
    }
}
