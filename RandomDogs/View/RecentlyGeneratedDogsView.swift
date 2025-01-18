//
//  RecentlyGeneratedDogsView.swift
//  RandomDogs
//
//  Created by Arjun Pratap Choudhary on 18/01/25.
//


import SwiftUI
import Foundation

struct RecentlyGeneratedDogsView: View {
    @StateObject private var viewModel = DogViewModel(cache: DogCache())
    @State private var cachedImages: [Data] = []
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: true) {
                HStack {
                    ForEach(Array(cachedImages.enumerated()), id: \.offset) { index, data in
                        if let uiImage = UIImage(data: data) {
                            Image(uiImage: uiImage)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 300)
                                .padding()
                        }
                    }
                }
            }
            .frame(height: UIScreen.main.bounds.height * 0.4)
            
//            Spacer()         

            Button(action: {
                viewModel.clearCache()
                cachedImages = []
            }) {
                Text("Clear Dogs!")
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 140, height: 30)
                    .background(Color(red: 66/255, green: 134/255, blue: 244/255))
                    .cornerRadius(30)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.black, lineWidth: 1.0)
                    )
            }
            
            Spacer()
        }
        .padding(.top, 20)
        .navigationTitle("My Recently Generated Dogs!")
        .onAppear {
            cachedImages = viewModel.cache.images
        }
    }
}
