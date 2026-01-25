//
//  ControlGroupMenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 1/25/26.
//

import SwiftUI

struct ControlGroupMenuBootcamp: View {
    var body: some View {
      Menu("My Menu") {
        ControlGroup("One") {
          Button("Uno") {}
          Button("Dos") {}
          Menu("Whats up?"){
            Button("Great") {}
            Button("Terrible") {}
          }
        }
        
        Button("Button Two") {}
        
        Menu("Three") {
          Button("Hi") {}
          Button("Hello") {}
          Menu("How are you?") {
            Button("Good") {}
            Button("Bad") {}
          }
        }
      }
    }
}

#Preview {
    ControlGroupMenuBootcamp()
}
