//
//  PopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 8/17/25.
//

import SwiftUI

struct PopoverBootcamp: View {
  @State var showNewScreen: Bool = false
  var body: some View {
    ZStack {
      
      Color.orange
        .ignoresSafeArea(.all)
      
      VStack {
        
        Button("Button") {
          withAnimation(.spring(duration: 0.5)) {
            showNewScreen.toggle()
          }
          
          
          
        }
        .font(.largeTitle)
        Spacer()
        
        // METHOD 1 - SHEET
        //    .sheet(isPresented: $showNewScreen) {
        //      NewScreen()
        //    }
        
        
        // MEHTOD 2 - Transtion
//        ZStack {
//          if showNewScreen {
//            NewScreen( showNewScreen: $showNewScreen)
//              .padding(.top, 100)
//              .transition(.move(edge: .bottom))
//          }
//          
//        }.zIndex(2)
        
        //MEHTOD 3 - Animation OFFSET
        
        NewScreen(showNewScreen: $showNewScreen)
          .padding(.top, 100)
          .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)

        
        
        
      }
    }
  }
}



struct NewScreen: View {
  @Environment(\.dismiss) var dismiss
  @Binding var showNewScreen: Bool
  var body: some View {
    ZStack(alignment: .topLeading) {
      Color.purple
        .ignoresSafeArea(.all)
      
      
      Button {
        dismiss()
        showNewScreen.toggle()
      } label: {
      Image(systemName: "xmark")
          .foregroundStyle(.white)
          .font(.largeTitle)
          .padding()
      }

      
      
    }
    
  }
}

#Preview {
    PopoverBootcamp()
}
