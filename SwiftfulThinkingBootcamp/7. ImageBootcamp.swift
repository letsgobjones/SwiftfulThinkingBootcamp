//
//  ImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 8/11/25.
//

import SwiftUI

struct ImageBootcamp: View {
  var body: some View {
    Image("brandon1")
      .resizable()
    //        .aspectRatio(contentMode: .fit)
    //        .scaledToFit()
      .scaledToFill()
      .frame(width: 300, height: 300)
    //        .clipped()
      .clipShape(RoundedRectangle(cornerRadius: 35))
    
    
    Image("google")
//      .renderingMode(.template)
      .resizable()
      .scaledToFill()
      .frame(width: 300, height: 300)
      .foregroundColor(.red)
  }
}

#Preview {
    ImageBootcamp()
}
