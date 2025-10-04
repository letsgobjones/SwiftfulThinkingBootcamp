//
//  BindingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 8/16/25.
//

import SwiftUI

struct BindingBootcamp: View {
  @State var backgroundColor: Color = .green
  @State var title: String = "Title"
  var body: some View {
    ZStack {
      
      backgroundColor
        .ignoresSafeArea()
      
      VStack {
        Text(title)
          .foregroundStyle(.white)
        ButtonView(backgroundColor: $backgroundColor, title: $title)
      }
      
    
    }
  }
}




struct ButtonView: View {
  @Binding var backgroundColor: Color
  @State var buttonColor: Color = .red
  @Binding var title: String
  var body: some View {
    Button {
    backgroundColor = .orange
      buttonColor = .purple
      title = "New Title"
      
    } label: {
      Text("Button")
        .foregroundColor(.white)
        .padding()
        .padding(.horizontal)
        .background(buttonColor)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
    
  }
}



#Preview {
  BindingBootcamp()
}
