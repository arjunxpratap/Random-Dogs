//
//  DogViewModel.swift
//  RandomDogs
//
//  Created by Arjun Pratap Choudhary on 18/01/25.
//

import SwiftUI

class DogViewModel: ObservableObject {
    @Published var currentDogImage: Image? = nil
    @ObservedObject var cache: DogCache
    
    init(cache: DogCache) {
        self.cache = cache
    }
    
    func generateDog() {
        guard let url = URL(string: "https://dog.ceo/api/breeds/image/random") else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, _ in
            guard let data = data,
                  let response = try? JSONDecoder().decode(DogImageResponse.self, from: data),
                  let imageURL = URL(string: response.message),
                  response.status == "success"
            else { return }
            
            URLSession.shared.dataTask(with: imageURL) { imgData, _, _ in
                guard let imgData = imgData else { return }
                DispatchQueue.main.async {
                    if let uiImage = UIImage(data: imgData) {
                        self.currentDogImage = Image(uiImage: uiImage)
                        self.cache.addImage(imgData)
                    }
                }
            }.resume()
        }.resume()
    }
    
    func clearCache() {
        cache.clear()
    }
}
