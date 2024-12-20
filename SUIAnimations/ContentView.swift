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
        
        ZStack {
            
            Circle().fill(.green.opacity(0.2))
                .shadow(color: .green.opacity(0.4), radius: 5, x: 5, y: 5)
                .shadow(color: .green.opacity(0.5), radius: 5, x: -5, y: -5)
                .scaleEffect(isAnimating ? 1.7 : 1)
            
            Circle().fill(.green.opacity(0.2))
                .shadow(color: .green.opacity(0.3), radius: 5, x: 5, y: 5)
                .shadow(color: .green.opacity(0.3), radius: 5, x: -5, y: -5)
                .scaleEffect(isAnimating ? 1.4 : 1)
            
            Circle().fill(.green.opacity(0.2))
                .shadow(color: .green.opacity(0.1), radius: 5, x: 5, y: 5)
                .shadow(color: .green.opacity(0.1), radius: 5, x: -5, y: -5)
                .scaleEffect(isAnimating ? 1.1 : 1)
            
            
            Circle().fill(.white)
                .shadow(color: .black.opacity(0.1), radius: 5, x: 5, y: 5)
        }
        .onAppear {
//            Timer.publish(every: 2, on: .main, in: .common).autoconnect() {
//                
//            }
//            isAnimating = true
            
//            DispatchQueue.main.asyncAfter(deadline: .now() + 1.2, execute: {
//                isAnimating = false
//            })
            Timer.scheduledTimer(withTimeInterval: 0.9, repeats: true) { t in
                withAnimation(.linear(duration: 0.4)) {
                    isAnimating = false
                }
                
                withAnimation(.linear(duration: 0.9)) {
                    isAnimating = true
                }
                
//                DispatchQueue.main.asyncAfter(deadline: .now() + 1.2, execute: {
//                    isAnimating = false
//                })
            }
        }
        .frame(width: 80, height: 80)
        .padding()
//        VStack {
////            .golf
////            .clipShape(RoundedRectangle(cornerRadius: 100))
////            .overlay(RoundedRectangle(cornerRadius: 100).stroke(.red, lineWidth: 2))
////            Image(.golf).font(.system(size: 100))
////                .clipShape(RoundedRectangle(cornerRadius: 100))
////                .effect
////                .symbolEffect(.bounce, options: isAnimating ? .repeating.speed(1) : .default , value: isAnimating)
//        }
//        .padding()
//        .onAppear {
//            isAnimating = true
//        }
    }
}

#Preview {
    ContentView()
}
