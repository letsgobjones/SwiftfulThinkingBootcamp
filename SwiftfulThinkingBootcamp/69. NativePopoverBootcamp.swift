//
//  NativePopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 1/19/26.
//

import SwiftUI

struct NativePopoverBootcamp: View {
  @State private var showPopover: Bool = false
  @State private var feedbackOptions: [String] = [
    "Very good 🥳",
    "Average 🙂",
    "Very bad 😡"
  ]
  var body: some View {
    ZStack {
      Color.gray.ignoresSafeArea()
      VStack {
        Spacer()
        Button("Provide Feedback") {
          showPopover.toggle()
        }
        .padding(20)
        .background(.yellow)
        .popover(isPresented: $showPopover, attachmentAnchor: .point(.top)) {
          ScrollView {
            VStack (alignment: .leading,spacing: 12) {
              ForEach(feedbackOptions, id: \.self) { option in
                Button {
                  
                } label: {
                  Text(option)
                }
                if option != feedbackOptions.last {
                  Divider()
                }
                
              }
            }
            .padding(20)
            .presentationCompactAdaptation(.popover)
          }
        }
      }
    }
  }
}


#Preview {
    NativePopoverBootcamp()
}
