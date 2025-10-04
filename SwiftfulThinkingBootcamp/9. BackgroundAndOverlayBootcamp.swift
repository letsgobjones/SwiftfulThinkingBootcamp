//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 8/11/25.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
//    Rectangle()
//        .frame(width: 100, height: 100)
//        .overlay(alignment: .topLeading) {
//          Rectangle()
//            .fill(Color.blue)
//            .frame(width: 50, height: 50)
//        }
//        .background(alignment: .bottomTrailing) {
//          Rectangle()
//          .fill(Color.red)
//          .frame(width: 150, height: 150)
//        }
      
      Image(systemName: "heart.fill")
        .font(.system(size: 40))
        .foregroundStyle(.white)
        .background(
          Circle()
            .fill(
              LinearGradient(colors: [.purple.opacity(0.7), .purple],
                             startPoint: .topLeading,
                             endPoint: .bottomTrailing)
            )
            .frame(width: 100, height: 100)
            .shadow(color: .purple.opacity(0.5), radius: 10, x: 0, y: 10)
            .overlay(alignment: .bottomTrailing) {
              Circle()
                .fill(.blue)
                .frame(width: 35, height: 35)
                .overlay(
                  Text("5")
                    .font(.headline)
                    .foregroundColor(.white)
                  )
                .shadow(color: .purple.opacity(0.5), radius: 10, x: 5, y: 5)
              
            }
      )
      
      
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
