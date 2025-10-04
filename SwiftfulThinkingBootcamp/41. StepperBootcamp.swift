//
//  StepperBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 10/3/25.
//

import SwiftUI

struct StepperBootcamp: View {
  @State var stepperValue: Int = 10
  @State var widthIncrement: CGFloat = 0
    var body: some View {
      VStack {
        Stepper("Stepper \(stepperValue)", value: $stepperValue)
          .padding()
        
        RoundedRectangle(cornerRadius: 25)
          .frame(width: 100 + widthIncrement, height: 100)
        Stepper("Stepper 2") {
          // Increment
         increaseWidth(amount: 10)
        } onDecrement: {
          // Decrement
         increaseWidth(amount: -10)
        }

      }
    }
  
  func increaseWidth(amount: CGFloat) {
    withAnimation(.easeInOut) {
      widthIncrement += amount
    }
  }
  
}

#Preview {
    StepperBootcamp()
}
