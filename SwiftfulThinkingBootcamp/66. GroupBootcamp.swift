//
//  GroupBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 1/18/26.
//

import SwiftUI

struct GroupBootcamp: View {
  var body: some View {
    VStack(spacing: 50) {
      Text("Hello, World!")
      
      Group {
        Text("Hello, World!")
        Text("Hello, World!")
      }
      .font(.caption)
      .foregroundStyle(.blue)
    }
    .font(.headline)
    .foregroundStyle(.red)
  }
}

#Preview {
  GroupBootcamp()
}
