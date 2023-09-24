//
//  ImageLoader.swift
//  networkmastry
//
//  Created by Pardip Bhatti on 25/09/23.
//

import SwiftUI

class ImageLoader: ObservableObject {
    @Published var image: Image?
    
    private let urlString: String
    
    init(url: String) {
        self.urlString = url
        Task { await loaAdImage() }
    }
    
    @MainActor
    private func loaAdImage() async {
        if let cached = ImageCache.shared.get(forKey: urlString) {
            self.image = Image(uiImage: cached)
            return
        }
        guard let url = URL(string: urlString) else { return }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            guard let uiImage = UIImage(data: data) else { return }
            ImageCache.shared.set(uiImage, forKey: urlString)
            self.image = Image(uiImage: uiImage)
        } catch {
           print("DEBUG: Failed to fetch image with \(error)")
        }
    }
}
