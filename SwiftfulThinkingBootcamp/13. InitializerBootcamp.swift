//
//  InitializerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 8/15/25.
//

import SwiftUI

struct InitializerBootcamp: View {
  
  let backgroundColor: Color
  let count: Int
  let title: String
  
  
  init( count: Int, fruit: Fruit) {
    self.count = count
  
    
    
    
    if fruit == .apple {
      self.title = "Apple"
      backgroundColor = .red
    } else {
      self.title = "Orange"
      backgroundColor = .orange
    }
  }
  
  
  enum Fruit {
    case apple
    case orange
    
  }
  
    var body: some View {
      VStack(spacing: 12) {
        Text("\(count)")
          .font(.largeTitle)
          .foregroundColor(.white)
          .underline(true)

        Text("\(title)")
          .font(.headline)
          .foregroundColor(.white)
      }
      .frame(width: 150, height: 150)
      .background(backgroundColor)
      .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
  HStack {
    InitializerBootcamp(count: 100, fruit: .orange)
    InitializerBootcamp(count: 50, fruit: .apple)
  }
}
