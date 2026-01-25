//
//  ResizableSheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 1/18/26.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
  @State private var showSheet: Bool = false
  @State private var detents: PresentationDetent = .large
    var body: some View {
      Button("Cick me!") {
        showSheet.toggle()
      }
      .sheet(isPresented: $showSheet) {
        MyNextView(detents: $detents)
//          .presentationDetents([.medium, .large], selection: $detents)
//          .presentationDetents([.fraction(0.1),.medium, .large])
//          .presentationDetents([.fraction(0.1), .medium, .large])
//          .presentationDetents([.height(500)])
//          .presentationDragIndicator(.hidden)
//          .interactiveDismissDisabled()
      }
      
//      .onAppear {
//        showSheet = true
//      }
    }
}

#Preview {
    ResizableSheetBootcamp()
}

struct MyNextView: View {
  @Binding var detents: PresentationDetent
  
  var body: some View {
    ZStack {
      Color.red.ignoresSafeArea()
      VStack(spacing: 20) {
        Button("20%") {
          detents = .fraction(0.2)
         
        }
        Button("Medim") {
          detents = .medium
         
        }
        Button("600 PX") {
          detents = .height(600)
         
        }
        
        Button("Large") {
          detents = .large
        }
      }   
    }
    .presentationDetents([.fraction(0.2),.medium, .height(600), .large], selection: $detents)
  }
}
