//
//  ContentView.swift
//  networkmastry
//
//  Created by Pardip Bhatti on 20/09/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = CoinsViewModel()
    var body: some View {
        List {
            ForEach(viewModel.coins, id: \.id) { coin in
                HStack(spacing: 12) {
                    Text("\(coin.marketCapRank)")
                        .foregroundStyle(.gray)
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text(coin.name)
                            .fontWeight(.semibold)
                        
                        Text(coin.symbol.uppercased())
                    }
                }
                .font(.footnote)
            }
        }.overlay {
            if let error = viewModel.errorMessage {
                Text(error)
            }
        }
    }
}

#Preview {
    ContentView()
}
