//
//  SpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 8/15/25.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
      VStack {
        HStack(spacing: 0) {
          Image(systemName: "xmark")
          Spacer()
          Image(systemName: "gear")
          
        }
        .font(.title)
        .background(.yellow)
        .padding(.horizontal)
        //      .padding(.horizontal, 400)
        .background(Color.blue)
        
        Spacer()
      }
      .background(Color.green)
    
       

    }
}

#Preview {
    SpacerBootcamp()
}
