//
//  SplashScreenView.swift
//  RandomDogs
//
//  Created by Arjun Pratap Choudhary on 18/01/25.
//


import SwiftUI
import Lottie

struct SplashScreenView: View {
    @State private var isActive = false
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                LottieView(name: "dog")
                    .frame(width: 20, height: 20)
                    .scaleEffect(0.2)
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}


struct LottieView: UIViewRepresentable {
    var name: String
    
    func makeUIView(context: Context) -> LottieAnimationView {
        let animationView = LottieAnimationView(name: name)
        animationView.play()
        animationView.loopMode = .loop
        animationView.contentMode = .scaleAspectFit
        return animationView
    }
    
    func updateUIView(_ uiView: LottieAnimationView, context: Context) {
        // No updates needed
    }
}
