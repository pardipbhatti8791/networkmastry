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
//    @State private var task: Task<(), Never>?
    
    init(coin: Coin, service: CoinDataService) {
        self.coin = coin
        self.viewModel = CoinDetailsViewModel(coinId: coin.id, service: service)
    }
    
    // Mark:- body section
    var body: some View {
        VStack(alignment: .leading, content: {
            if let details = viewModel.coinDetails {
                Text(details.name)
                    .fontWeight(.semibold)
                    .font(.subheadline)
                Text(details.symbol.uppercased())
                    .font(.footnote)
                
                Text(details.description.text)
                    .padding(.vertical)
            }
        })
        .task {
            await viewModel.fetchCoinDetails()
        }
//        .onAppear {
//            self.task = Task { await viewModel.fetchCoinDetails() }
//        }
//        .onDisappear {
//            task?.cancel()
//        }
        .padding()
    }
}

//#Preview {
//    CoinDetailsView(coin: .con)
//}
