//
//  ToogleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 9/14/25.
//

import SwiftUI
struct ToogleBootcamp: View {
  @State var toggleIsOn: Bool  = false
  var body: some View {
    VStack {
      HStack {
        Text("Status")
        Text(toggleIsOn ? "Online" : "Offline")
      }
      .font(.title)
      
      
      Toggle(isOn: $toggleIsOn) {
        Text("Change Status")
      }
      .tint(.red)
      
      Spacer()
    }
    .padding(.horizontal,100)
    }
}

#Preview {
    ToogleBootcamp()
}
