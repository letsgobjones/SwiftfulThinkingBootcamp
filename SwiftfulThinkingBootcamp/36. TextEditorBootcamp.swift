//
//  TextEditorBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 9/14/25.
//

import SwiftUI

struct TextEditorBootcamp: View {
  @State var textEditorText: String = "This is placeholder text"
  @State var savedText: String = ""
  var body: some View {
    NavigationStack {
      VStack {
        TextEditor(text: $textEditorText)
          .frame(height: 250)
          .foregroundStyle(.white)
          .scrollContentBackground(.hidden)
          .background(Color.gray.opacity(0.3))
          .clipShape(RoundedRectangle(cornerRadius: 10))
        
        
        Button {
          savedText = textEditorText
        } label: {
          Text("Save".uppercased())
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(.blue)
            .cornerRadius(10)
        }
        Text(savedText)
        Spacer()
      }
      .padding()
      .background(.green)
      .navigationTitle("Text Editor Bootcamp")
    }
  }
}

#Preview {
  NavigationStack {
    TextEditorBootcamp()
  }
}
