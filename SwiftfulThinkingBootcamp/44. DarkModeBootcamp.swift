//
//  DarkModeBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 10/4/25.
//

import SwiftUI

struct DarkModeBootcamp: View {
  @Environment(\.colorScheme) var colorScheme
    var body: some View {
      NavigationStack {
        ScrollView {
          VStack  {
            Text("This text is PRIMARY")
              .foregroundStyle(.primary)
            
            Text("This text is SECONDARY")
              .foregroundStyle(.secondary)
            
            Text("This text is TERTIARY")
              .foregroundStyle(.tertiary)
            
            Text("This text is BLACK")
              .foregroundStyle(.black)
            
            Text("This test is WHITE")
              .foregroundStyle(.white)
            
            Text("This color is RED")
              .foregroundStyle(.red)
            
          Text("This color is globally ADAPTIVE")
              .foregroundStyle(Color.adaptive)
            
            Text("This color is localy adaptive!")
              .foregroundStyle(colorScheme == .light ? .green : .purple)
          }
        }
        .navigationTitle("Dark Mode Bootcaamp")
      }
    }
}

#Preview {
  
    DarkModeBootcamp()
}
