//
//  CoinDetailsView.swift
//  networkmastry
//
//  Created by Pardip Bhatti on 24/09/23.
//

import SwiftUI

struct CoinDetailsView: View {
    let coin: Coin
    @ObservedObject var viewModel: CoinDetailsViewModel
  
    init(coin: Coin) {
        self.coin = coin
        self.viewModel = CoinDetailsViewModel(coinId: coin.id)
    }
    
    // Mark:- body section
    
    var body: some View {
        Text(coin.name)
    }
}

//#Preview {
//    CoinDetailsView(coin: .con)
//}
