//
//  ActionsheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 9/1/25.
//

import SwiftUI

struct ActionsheetBootcamp: View {
  @State var showActionSheet: Bool = false
  @State var actionSheetOption: ActionSheetOption = .isOtherPost
  enum ActionSheetOption {
    case isMyPost
    case isOtherPost
  }
    var body: some View {
      VStack {
        HStack {
          Circle()
            .frame(width: 30, height: 30)
          Text("@usename")
          Spacer()
          Button {
            actionSheetOption = .isOtherPost
            showActionSheet.toggle()
          } label: {
            Image(systemName: "ellipsis")
          }
          .tint(.primary)
         
        }
        .padding(.horizontal)
        Rectangle()
          .aspectRatio(1.0, contentMode: .fit)
      }
        .confirmationDialog("This is the title", isPresented: $showActionSheet, titleVisibility: .visible) {
          Button("Share") {
            
          }
          
          Button("Report", role: .destructive) {
            
          }
          
          Button("Delete", role: .destructive) {
            
          }
          
        }
        message: {
          Text("This is the message")
        }
      }
    
}

#Preview {
    ActionsheetBootcamp()
}
