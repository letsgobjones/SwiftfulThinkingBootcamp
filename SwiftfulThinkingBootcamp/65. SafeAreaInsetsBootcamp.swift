//
//  SafeAreaInsetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 1/18/26.
//

import SwiftUI

struct SafeAreaInsetsBootcamp: View {
  var body: some View {
    NavigationStack {
      List(0..<10) { _ in
        Rectangle()
        .frame(height: 300)
    }
    .navigationTitle("Safe Area Insets")
    .navigationBarTitleDisplayMode(.inline)
    //      .overlay(alignment: .bottom) {
    //        Text("Hi")
    //          .frame(maxWidth: .infinity)
    //          .background(.yellow)
    //      }
    .safeAreaInset(edge: .top, alignment: .trailing, spacing: nil) {
      Text("Hi")
                        .frame(maxWidth: .infinity)
//        .padding()
                        .background(Color.yellow.ignoresSafeArea( edges: .bottom))
//        .clipShape(Circle())
//        .padding()
    }
      
    .safeAreaInset(edge: .bottom, alignment: .trailing, spacing: nil) {
      Text("Hi")
                        .frame(maxWidth: .infinity)
//        .padding()
                        .background(Color.yellow.ignoresSafeArea( edges: .bottom))
//        .clipShape(Circle())
//        .padding()
    }
  }
  }
}

#Preview {
  SafeAreaInsetsBootcamp()
}
