//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 8/11/25.
//

import SwiftUI

struct GradientsBootcamp: View {
  var body: some View {
    RoundedRectangle(cornerRadius: 25.0)
      .fill(
        LinearGradient(
          colors: [Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1))],
          startPoint: .leading,
          endPoint: .trailing)
      )
      .frame(width: 300, height: 200)
    
    RoundedRectangle(cornerRadius: 25.0)
      .fill(
RadialGradient(
  colors:
    [Color(.black), Color(#colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1))],
          center: .topLeading,
          startRadius: 5,
          endRadius: 200
        )
        
      )
      .frame(width: 300, height: 200)
    
    RoundedRectangle(cornerRadius: 25.0)
      .fill(
AngularGradient(
  colors:
    [Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.5810584426, green: 0.1285524964, blue: 0.5745313764, alpha: 1))],
  center: .topLeading,
          angle: .degrees(180 + 45)
        )
      )
      .frame(width: 300, height: 200)
  }
}

#Preview {
  GradientsBootcamp()
}
