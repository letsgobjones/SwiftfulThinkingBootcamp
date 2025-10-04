//
//  StateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 8/16/25.
//

import SwiftUI

struct StateBootcamp: View {
  @State var backgroundColor: Color = .green
  @State var myTitle: String = "My Title"
  @State var count: Int = 0
  var body: some View {
    ZStack {
     backgroundColor
        .ignoresSafeArea()
      
      VStack(spacing: 20) {
        
        Text(myTitle)
          .font(.title)
        Text("Count: \(count)")
          .font(.headline)
          .underline()
        
        
        HStack(spacing: 20) {
          Button("Button 1") {
            backgroundColor = .blue
            myTitle = "Button 1 was pressed"
            count += 1
          }
          Button("Button 2") {
          backgroundColor = .red
            myTitle = "Button 2 was pressed"
            count -= 1
          }
        }
      }
      .foregroundStyle(.white)
      
      
    }
    
  }
}

#Preview {
  StateBootcamp()
}
