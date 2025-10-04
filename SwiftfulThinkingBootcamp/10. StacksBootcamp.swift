//
//  StacksBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 8/13/25.
//

import SwiftUI

struct StacksBootcamp: View {
  var body: some View {
    VStack(spacing: 50) {
      ZStack() {
        Circle()
          .frame(width: 100, height: 100)
        
        Text("1")
          .font(.title)
          .foregroundColor(.white)
      }
              
              Text("1")
        .font(.title)
        .foregroundColor(.white)
        .background(
          Circle()
            .frame(width: 100, height: 100)
        )
    }
  }
}

#Preview {
    StacksBootcamp()
}
