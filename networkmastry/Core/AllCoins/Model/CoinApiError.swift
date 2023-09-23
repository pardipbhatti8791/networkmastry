//
//  CoinApiError.swift
//  networkmastry
//
//  Created by Pardip Bhatti on 24/09/23.
//

import Foundation

enum CoinApiError: Error {
    case invalidData
    case jsonParsingFailure
    case requestFailed(description: String)
    case invalidStatusCode(statusCode: Int)
    case unkownError(error: Error)
    
    var customDescription: String {
        switch self {
        case .invalidData: return "Invalid data"
        case .jsonParsingFailure: return "Failed to parse JSON"
        case let .requestFailed(description): return "Request failed: \(description)"
        case .invalidStatusCode(statusCode: let statusCode): return "Invalid status code \(statusCode)"
        case .unkownError(error: let error): return "An unknow error occurud \(error.localizedDescription)"
        }
    }
}
