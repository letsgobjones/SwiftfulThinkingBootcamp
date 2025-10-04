//
//  ExtractedFunctionsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 8/16/25.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
  @State var backgroundColor: Color = .pink
  
    var body: some View {
      ZStack {
        backgroundColor
          .ignoresSafeArea()
        
        
        contentLayer
       
        
        
      }
    }
  
  var contentLayer: some View {
    VStack {
      Text("Title")
        .font(.largeTitle)
      
      Button {
    buttonPressed()
      } label: {
        Text("Press Me")
          .font(.headline)
          .foregroundStyle(.white)
          .padding()
          .background(.black)
          .clipShape(RoundedRectangle(cornerRadius: 10))
      }

      
    }
    
  }
  
  func buttonPressed() {
    backgroundColor = .yellow
  }
  
  
  
}

#Preview {
    ExtractedFunctionsBootcamp()
}
