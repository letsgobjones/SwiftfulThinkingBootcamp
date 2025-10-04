//
//  ScrollViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 8/15/25.
//

import SwiftUI

struct ScrollViewBootcamp: View {
  var body: some View {

    ScrollView {
      LazyVStack {
        ForEach(0..<100) { index in
          
          ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
              ForEach(0..<5) { index in
                RoundedRectangle(cornerRadius: 25.0)
                  .fill(Color.white)
                  .frame(width: 200, height: 150)
                  .shadow(radius: 10)
                  .padding()
              }
            }
          }
        }
      }
    }
    
  
}
}

#Preview {
    ScrollViewBootcamp()
}
