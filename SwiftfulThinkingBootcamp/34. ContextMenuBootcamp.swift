//
//  ContextMenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 9/3/25.
//

import SwiftUI

struct ContextMenuBootcamp: View {
  @State var backgroundColor: Color = .blue
  var body: some View {
    VStack(alignment: .leading, spacing: 10.0) {
      Image(systemName: "house.fill")
        .font(.title)
      Text("Swiftful Thinking")
        .font(.headline)
      Text("How to use Context Menu")
        .font(.subheadline)
    }
    .foregroundColor(.white)
    .padding(30)
    .background(backgroundColor)
    .clipShape(RoundedRectangle(cornerRadius: 30))
    .contextMenu {
      Button {
        backgroundColor = .yellow
      } label: {
        Label {
          Text("Button 1")
        } icon: {
          Image(systemName: "flame.fill")
        }

      }

      Button {
        backgroundColor = .red
      } label: {
        Text("Button 2")
      }

      Button {
        backgroundColor = .green
      } label: {
        HStack {
          Text("Button 3")
          Image(systemName: "heart.fill")
        }
      }

    }
  }
}

#Preview {
  ContextMenuBootcamp()
}
