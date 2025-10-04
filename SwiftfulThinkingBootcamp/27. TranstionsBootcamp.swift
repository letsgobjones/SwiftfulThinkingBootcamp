//
//  TranstionsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 8/17/25.
//

import SwiftUI

struct TranstionsBootcamp: View {
  
  @State var showView: Bool = false
  var body: some View {
    
    ZStack(alignment: .bottom) {
      VStack {
        
        Button("Button") {
          withAnimation(.easeInOut(duration: 0.5)) {
            showView.toggle()
          }
        }
        
        Spacer()
      }
      
      if showView {
        RoundedRectangle(cornerRadius: 30)
          .frame(height: UIScreen.main.bounds.height / 2)
          .transition(.asymmetric(
            insertion: .move(edge: .leading),
            removal: .move(edge: .bottom)))
        
      }
    }
    .ignoresSafeArea(edges: .bottom)
  }
}

#Preview {
    TranstionsBootcamp()
}
