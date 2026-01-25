//
//  ToolbarBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 1/17/26.
//

import SwiftUI

struct ToolbarBootcamp: View {
  @State private var text: String = ""
  @State private var paths: [String] = []
  var body: some View {
    NavigationStack(path: $paths) {
      ZStack {
        Color.white.ignoresSafeArea()
        
        ScrollView {
          ForEach(0..<5) { _ in
            RoundedRectangle(cornerRadius: 25.0)
              .frame(width: 200, height: 200)
              .shadow(radius: 10)
              .padding()
          }
          TextField("Placeholder", text: $text)
          Text("Hey 🤩")
            .foregroundStyle(.white)
        }
        .navigationTitle("Toolbar")
        //        .navigationBarItems(
        //          leading: Image(systemName: "heart.fill"),
        //                         trailing: Image(systemName: "gear")
        //        )
        .toolbar {
          ToolbarItem(placement: .topBarLeading) {
            Image(systemName: "heart.fill")
          }
          ToolbarItem(placement: .topBarTrailing) {
            Image(systemName: "gear")
          }
        }
        //                .toolbar(.hidden, for: .navigationBar)
        //        .toolbarBackground(.hidden, for: .navigationBar)
        //        .toolbarColorScheme(.dark, for: .navigationBar)
        .toolbarTitleMenu {
          Button("SCREEN 1") {
            paths.append("SCREEN 1")
          }
          Button("SCREEN 2") {
            paths.append("SCREEN 2")
          }
        }
        .navigationDestination(for: String.self) { value in
          Text("Next screen: \(value)")
        }
      }
    }
  }
}


#Preview {
  ToolbarBootcamp()
}
