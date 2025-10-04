//
//  AnimationsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 8/17/25.
//

import SwiftUI

struct AnimationsBootcamp: View {
  @State var isAnimated: Bool = false
  
    var body: some View {
      VStack {
        Button("Tap Me") {
          withAnimation(.default
            .repeatForever(autoreverses: true)
          ) {
            isAnimated.toggle()
          }
        }
        Spacer()
        RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
          .fill(isAnimated ? .red : .green)
          .frame(width: isAnimated ? 100 : 300,
                 height: isAnimated ? 100 : 300)
          .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
          .offset(y: isAnimated ? 300 : 0)
        Spacer()
      }
    }
}

#Preview {
    AnimationsBootcamp()
}
