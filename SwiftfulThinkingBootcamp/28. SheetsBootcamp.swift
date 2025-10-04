//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 8/17/25.
//

import SwiftUI

struct SheetsBootcamp: View {
  @State var showSheet: Bool = false
  
  var body: some View {
    ZStack {
      
      Color.green
        .ignoresSafeArea()
      
      Button {
        showSheet.toggle()
      }
      label: {
        Text("Button")
          .foregroundStyle(.green)
          .font(.headline)
          .padding(20)
          .background(.white)
          .clipShape(RoundedRectangle(cornerRadius: 10))
      }
      
    }.sheet(isPresented: $showSheet) {
      SecondScreen()
    }
    
//    .fullScreenCover(isPresented: $showSheet) {
//      SecondScreen()
//    }
    
  }
}

struct SecondScreen: View {
  @Environment(\.dismiss) var dismiss
  var body: some View {
    
    
    ZStack(alignment: .topLeading) {
      
      Color.red
        .ignoresSafeArea()
      
      Button {
        dismiss()
      }
      label: {
        Image(systemName: "xmark")
          .foregroundStyle(.white)
          .font(.largeTitle)
          .padding(20)
      
    
      }
      
    }
    
    
    
    
    
  }
}





#Preview {
  SheetsBootcamp()
}
