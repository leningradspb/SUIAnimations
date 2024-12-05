//
//  ContentView.swift
//  SUIAnimations
//
//  Created by Eduard Kanevskii on 05.12.2024.
//

import SwiftUI

struct ContentView: View {
    @State var isAnimating = false
    
    var body: some View {
        VStack {
//            .golf
//            .clipShape(RoundedRectangle(cornerRadius: 100))
//            .overlay(RoundedRectangle(cornerRadius: 100).stroke(.red, lineWidth: 2))
            Image(systemName: "suit.heart.fill").font(.system(size: 100))
                .symbolEffect(.bounce, options: isAnimating ? .repeating.speed(1) : .default , value: isAnimating)
        }
        .padding()
        .onAppear {
            isAnimating = true
        }
    }
}

#Preview {
    ContentView()
}
