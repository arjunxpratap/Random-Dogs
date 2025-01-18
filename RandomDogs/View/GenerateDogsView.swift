//
//  GenerateDogsView.swift
//  RandomDogs
//
//  Created by Arjun Pratap Choudhary on 18/01/25.
//

import SwiftUI
import Foundation

struct GenerateDogsView: View {
    @StateObject private var viewModel = DogViewModel(cache: DogCache())
    
    var body: some View {
        VStack {

            VStack {
                if let image = viewModel.currentDogImage {
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 250)
                }
            }
            .frame(height: UIScreen.main.bounds.height * 0.5)
            
//            Spacer()
//                .frame(height: UIScreen.main.bounds.height * 0.1)
            
            Button(action: {
                viewModel.generateDog()
            }) {
                Text("Generate!")
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 120, height: 30)
                    .background(Color(red: 66/255, green: 134/255, blue: 244/255))
                    .cornerRadius(30)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.black, lineWidth: 1.0)
                    )
            }
            
            Spacer()
        }
        .navigationTitle("Generate Dogs!")
    }
}
