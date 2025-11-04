//
//  TapGestureBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 10/7/25.
//

import SwiftUI

struct TapGestureBootcamp: View {
  @State var isSelected: Bool  = false
    var body: some View {
      VStack(spacing: 40) {
        
        RoundedRectangle(cornerRadius: 25.0)
          .frame(height: 200)
          .foregroundColor(isSelected ? .green : .red)
        
        Button {
isSelected.toggle()
        } label: {
          Text("Button")
            .font(.headline)
            .foregroundStyle(.white)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.blue)
            .cornerRadius(25)
        }
        
        
        Text("TAP Gesture")
          .font(.headline)
          .foregroundStyle(.white)
          .frame(height: 55)
          .frame(maxWidth: .infinity)
          .background(.blue)
          .cornerRadius(25)
//          .onTapGesture {
//            isSelected.toggle()
//          }
          .onTapGesture(count: 2) {
            isSelected.toggle()
          }
        
        
Spacer()
      }
      .padding(40)
    }
}

#Preview {
    TapGestureBootcamp()
}
