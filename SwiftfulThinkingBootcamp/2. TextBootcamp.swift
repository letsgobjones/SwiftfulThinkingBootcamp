//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 8/9/25.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
      Text("Hello, World! where are you?".capitalized)
        .font(.system(size: 30, weight: .bold, design: .rounded))
        .multilineTextAlignment(.leading).foregroundStyle(.blue)
      .frame(width: 200, height: 100, alignment: .leading)
        .minimumScaleFactor(0.1)
      
      
    }
}

#Preview {
    TextBootcamp()
}
