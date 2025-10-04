//
//  SliderBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 10/3/25.
//

import SwiftUI

struct SliderBootcamp: View {
  @State var sliderValue: Double = 3
  @State var color: Color = .red
    var body: some View {
      VStack {
        Text("Rating:")
//        Text("\(sliderValue)")
        Text(
        String(format: "%.2f", sliderValue)
        )
        .foregroundStyle(color)
//        Slider(value: $sliderValue)
//          .tint(.red)
        
//        Slider(value: $sliderValue, in: 1...5)
        
//        Slider(value: $sliderValue, in: 1...5, step: 0.5)
        
        Slider(value: $sliderValue,
               in: 1...5,
               step: 1.0) {
          Text("Title")
        } minimumValueLabel: {
          Text("1")
        } maximumValueLabel: {
          Text("5")
        } onEditingChanged: { _ in
          color = .green
        }
        .tint(.purple)
     
      }
      .padding()
      
      
    }
}

#Preview {
    SliderBootcamp()
}
