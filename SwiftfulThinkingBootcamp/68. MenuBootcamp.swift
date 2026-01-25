//
//  MenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 1/19/26.
//

import SwiftUI

struct MenuBootcamp: View {
    var body: some View {
      Menu("Click Me") {
        Button("One") {}
        Button("Two") {}
        Button("Three") {}
        Button("Four") {}
        
      }
    }
}

#Preview {
    MenuBootcamp()
}
