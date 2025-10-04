//
//  AnimationTimingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 8/17/25.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
  @State var isAnimating: Bool = false
  let timing: Double = 10
    var body: some View {
      VStack {
        Button("Button") {
       
            isAnimating.toggle()
          }
        
        
        RoundedRectangle(cornerRadius: 20)
          .fill(.black)
          .frame(width: isAnimating ? 350 : 50,
                 height: 100)
          .animation(.default, value: isAnimating)
        
        RoundedRectangle(cornerRadius: 20)
          .fill(.orange)
          .frame(width: isAnimating ? 350 : 50,
                 height: 100)
          .animation(.spring(duration: timing), value: isAnimating)
        
        
        RoundedRectangle(cornerRadius: 20)
          .fill(.purple)
          .frame(width: isAnimating ? 350 : 50,
                 height: 100)
          .animation(.spring(response: 10.0, dampingFraction: 0.7, blendDuration: 1.0), value: isAnimating)
        
        RoundedRectangle(cornerRadius: 20)
          .fill(.blue)
          .frame(width: isAnimating ? 350 : 50,
                 height: 100)
          .animation(.linear(duration: timing), value: isAnimating)
        
        RoundedRectangle(cornerRadius: 20)
          .fill(.green)
          .frame(width: isAnimating ? 350 : 50,
                 height: 100)
          .animation(.easeIn(duration: timing), value: isAnimating)

        
        
        RoundedRectangle(cornerRadius: 20)
          .fill(.yellow)
          .frame(width: isAnimating ? 350 : 50,
                 height: 100)
          .animation(.easeInOut(duration: timing), value: isAnimating)

        
        
        RoundedRectangle(cornerRadius: 20)
          .fill(.red)
          .frame(width: isAnimating ? 350 : 50,
                 height: 100)
          .animation(.easeOut(duration: timing), value: isAnimating)

        
        
        
        
        
        
      }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
