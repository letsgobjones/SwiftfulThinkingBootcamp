//
//  TernaryBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 8/17/25.
//

import SwiftUI

struct TernaryBootcamp: View {
  
  @State var isStartingState: Bool = false
  
    var body: some View {

      
      
      VStack {
        Button("Buttonn: \(isStartingState.description)") {
          isStartingState.toggle()
        }
        
        Text(isStartingState ? "Starting State" : "Ending State")
          .font(.headline)
        
        
        RoundedRectangle(cornerRadius: isStartingState ? 0 :25)
          .fill(isStartingState ? .red : .blue)
          .frame(
            width: isStartingState ? 200 : 50,
                 height: isStartingState ? 50 : 100)
        
        Spacer()
      }
    }
}

#Preview {
    TernaryBootcamp()
}
