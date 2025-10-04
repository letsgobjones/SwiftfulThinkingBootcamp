//
//  ContionalBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 8/17/25.
//

import SwiftUI

struct ContionalBootcamp: View {
  @State var showCircle: Bool = false
  @State var showRectangle: Bool = false
  
  @State var isLoading: Bool = false
    var body: some View {
      VStack(spacing: 20) {
        
        
        Button("Loading Button: \(isLoading.description)") {
          isLoading.toggle()
        }
        
        if isLoading {
          ProgressView()
        }
//        Button("Circle Button: \(showCircle.description)") {
//          showCircle.toggle()
//        }
//        
//        Button("Rectangle Button: \(showRectangle.description)") {
//          showRectangle.toggle()
//          
//        }
//        
//        
//        if showCircle {
//          Circle()
//            .frame(width: 100, height: 100)
//          
//        }
//        
//        if showRectangle {
//          Rectangle()
//            .frame(width: 100, height: 100)
//        }
//        
//        
//        
//        if showCircle || showRectangle{
//          RoundedRectangle(cornerRadius: 25)
//            .frame(width: 200, height: 100)
//        }
//        
//        
//        
//        
//        
//        Spacer()
      }
    }
}

#Preview {
    ContionalBootcamp()
}
