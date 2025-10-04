//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 8/15/25.
//

import SwiftUI

struct ForEachBootcamp: View {
  
  let data: [String] = ["Hi", "Hello", "Sup"]
  let myString: String = " Hello"
  
  
  var body: some View {
    VStack {
      ForEach(data.indices, id: \.self) { index in
        Text("\(data[index]) \(index)")
      }
    }
  }
}

#Preview {
  ForEachBootcamp()
}
