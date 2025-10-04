//
//  ColorsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 8/9/25.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
       RoundedRectangle(cornerRadius: 25)
        .fill(
//          Color.primary
//          Color(#colorLiteral(red: 0, green: 1, blue: 0.6186135411, alpha: 1))
          Color("CustomColor")
        
        
        )
        .frame(width: 300, height: 200)
//        .shadow(radius: 10)
        .shadow(color: Color("CustomColor").opacity(0.3), radius: 20, x: -20.0, y: -20.0)
    }
}

#Preview {
    ColorsBootcamp()
}
