//
//  FrameBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 8/11/25.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        .background(.red)
        .frame(height: 100)
        .background(.orange)
        .frame(width: 150)
        .background(.purple)
        .frame(maxWidth: .infinity)
        .background(.pink)
        .frame(height: 400)
        .background(.green)
        .frame(maxHeight: .infinity)
        .background(.yellow)
    }
}

#Preview {
    FrameBootcamp()
}
