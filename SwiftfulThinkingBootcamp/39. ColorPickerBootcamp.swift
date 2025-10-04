//
//  ColorPickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 10/1/25.
//

import SwiftUI

struct ColorPickerBootcamp: View {
  @State var backgroundColor: Color = .green
    var body: some View {
      ZStack {
        backgroundColor
          .ignoresSafeArea()
        
        ColorPicker("Select a color", selection: $backgroundColor, supportsOpacity: true)
          .padding()
          .background(.white)
          .cornerRadius(10)
          .font(.headline)
          .padding(50)
      }
    }
}

#Preview {
    ColorPickerBootcamp()
}
