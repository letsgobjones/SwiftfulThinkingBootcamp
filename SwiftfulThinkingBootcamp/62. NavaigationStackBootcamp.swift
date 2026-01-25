//
//  NavaigationStackBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 1/16/26.
//

import SwiftUI

struct NavaigationStackBootcamp: View {
  @State private var stackPath: [String] = []
  let fruits = ["Apple", "Orange", "Banana", "Peach"]
  var body: some View {
    NavigationStack(path: $stackPath) {
      ScrollView {
        VStack(spacing: 40) {
          
          Button("Super seque!") {
            stackPath.append(contentsOf: [
              "Carrot", "Spinach", "Potato"
            ])
          }
          
          ForEach(fruits, id: \.self) { fruit in
            NavigationLink(value: fruit) {
              Text(fruit)
            }
          }
          
          ForEach(0..<10) { x in
            NavigationLink(value: x) {
              Text("Click me")
            }
          }
        }
      }
      .navigationTitle("Nav Bootcamp")
      .navigationDestination(for: Int.self) { value in
        MySecondScreen(value: value) }
      .navigationDestination(for: String.self) { value in
        Text("Another \(value)")
      }
    }
  }
}


#Preview {
  NavaigationStackBootcamp()
}

struct MySecondScreen: View {
  let value: Int
  
  init(value: Int) {
    self.value = value
    print("INIT: \(value)")
  }
  
  var body: some View {
    Text("Screen \(value)")
  }
}
