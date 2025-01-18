//
//  DogCache.swift
//  RandomDogs
//
//  Created by Arjun Pratap Choudhary on 18/01/25.
//

import SwiftUI

class DogCache: ObservableObject {
    private let maxCapacity = 20
    private let cacheKey = "dogImagesCache"
    
    @Published var images: [Data] = []
    
    init() {
        loadFromUserDefaults()
    }
    
    func addImage(_ data: Data) {
        images.insert(data, at: 0)
        if images.count > maxCapacity {
            images.removeLast()
        }
        saveToUserDefaults()
    }
    
    func clear() {
        images.removeAll()
        saveToUserDefaults()
    }
    
    private func loadFromUserDefaults() {
        if let saved = UserDefaults.standard.object(forKey: cacheKey) as? [Data] {
            images = saved
        }
    }
    
    private func saveToUserDefaults() {
        UserDefaults.standard.set(images, forKey: cacheKey)
    }
}
