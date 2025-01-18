//
//  ContentView.swift
//  RandomDogs
//
//  Created by Arjun Pratap Choudhary on 18/01/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                Text("Random Dog Generator!")
                    .font(.headline)
                    .padding(.top, 200)
                
                Spacer()
                
                NavigationLink(destination: GenerateDogsView()) {
                    Text("Generate Dogs!")
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 170, height: 30)
                        .background(Color(red: 66/255, green: 134/255, blue: 244/255))
                        .cornerRadius(30)
                        .overlay(
                                                   RoundedRectangle(cornerRadius: 30)
                                                    .stroke(Color.black, lineWidth: 1.0)
                                               )
                }
                
                NavigationLink(destination: RecentlyGeneratedDogsView()) {
                    Text("My Recently Generated Dogs!")
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 280,height: 30)
                        .background(Color(red: 66/255, green: 134/255, blue: 244/255))
                        .cornerRadius(20)
                        .overlay(
                                                   RoundedRectangle(cornerRadius: 30)
                                                    .stroke(Color.black, lineWidth: 1.0)
                                               )
                }
                .padding(.bottom, 200)
            }
            .navigationBarTitle("", displayMode: .inline)
        }
    }
}
