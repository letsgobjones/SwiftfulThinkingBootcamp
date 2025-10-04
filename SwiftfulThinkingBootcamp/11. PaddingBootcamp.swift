//
//  PaddingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 8/13/25.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
      VStack(alignment: .leading) {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
          .font(.largeTitle)
          .fontWeight(.semibold)
          .padding(.bottom, 20)
     
        Text("This the descerption of what qe will do n this screen. IT is muilple lines and we will align the ext to theleding edge.")
        
      }
      .padding()
      .padding(.vertical, 30)
      .background(
        Color.white
          .clipShape(RoundedRectangle(cornerRadius: 10))
          .shadow(color: .blue.opacity(0.3), radius: 10, x: 0.0, y: 10.0)
        
        )
     
    }
}

#Preview {
    PaddingBootcamp()
}
