//
//  OnAppearBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 10/7/25.
//

import SwiftUI

struct OnAppearBootcamp: View {
  @State var myText: String = "Start Text."
  @State var count: Int = 0
    var body: some View {
      NavigationStack {
        ScrollView {
          
          Text(myText)
          LazyVStack {
            ForEach(0..<50) { _ in
              RoundedRectangle(cornerRadius: 25)
                .fill(.black)
                .frame(height: 200)
                .shadow(radius: 10)
                .padding()
                .onAppear {
                  count += 1
                }
//                .onDisappear {
//                  count -= 1
//                }
              
            }
          }
        }
//        .onAppear {
//          DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
//            myText = "This is the new text!"
//          }
//        }
//
        .onAppear {
          Task {
            try await Task.sleep(for: .seconds(5))
            myText = "This is the new text 2!"
          }
        }
        
        .onDisappear {
          myText = "Ending Text"
        }
        
        
        .navigationTitle("On Appear: \(count)")
      }
    }
}

#Preview {
    OnAppearBootcamp()
}
