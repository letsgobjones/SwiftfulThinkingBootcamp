//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 8/9/25.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//      Capsule(style: .circular)
//      Rectangle()
      RoundedRectangle(cornerRadius: 50.0)
//        .fill(Color.red)
//        .stroke()
//        .stroke(Color.red)
//        .stroke(Color.blue, lineWidth: 10)
//        .strokeBorder(Color.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round,  dash: [30]))
        .trim(from: 0.4, to: 1.0)
        .stroke(Color.red, lineWidth: 50)
        .frame(width: 300, height: 200)
      
 
       
      
    }
}

#Preview {
    ShapesBootcamp()
}
