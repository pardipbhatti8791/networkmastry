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
    
    init(coin: Coin, service: CoinServiceProtocol) {
        self.coin = coin
        self.viewModel = CoinDetailsViewModel(coinId: coin.id, service: service)
    }
    
    // Mark:- body section
    var body: some View {
        VStack(alignment: .leading, content: {
            if let details = viewModel.coinDetails {
                HStack {
                    VStack {
                        Text(details.name)
                            .fontWeight(.semibold)
                            .font(.subheadline)
                        Text(details.symbol.uppercased())
                            .font(.footnote)
                    }
                    Spacer()
                    
                    CoinImageView(url: coin.image)
                        .frame(width: 60, height: 60)
                }
                
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
