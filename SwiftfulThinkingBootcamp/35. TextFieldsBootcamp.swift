//
//  TextFieldsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 9/3/25.
//

import SwiftUI

struct TextFieldsBootcamp: View {
  @State var textFieldText: String = ""
  @State var dataArray: [String] = []
    var body: some View {
      
      NavigationStack {
        VStack {
          TextField("Type something here...", text: $textFieldText)
          //        .textFieldStyle(.roundedBorder)
            .padding()
            .background(Color.gray.opacity(0.3))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .foregroundColor(.red)
            .font(.headline)
          Button {
            if textIsAppropriate() {
              saveText()
            }
          } label: {
            Text("Save".uppercased())
              .padding()
              .frame(maxWidth: .infinity)
              .background(textIsAppropriate() ? Color.blue : Color.gray.opacity(0.3))
              .clipShape(RoundedRectangle(cornerRadius: 10))
              .foregroundColor(.white)
              .font(.headline)
          }
          .disabled(!textIsAppropriate())
          
       ForEach(dataArray, id: \.self) { data in
         Text(data)
       }
          Spacer()
        }
        .padding()
        .navigationTitle("TextFields Bootcamp")
          .padding()
      }
   
    }
  
  func textIsAppropriate() -> Bool {
    if textFieldText.count >= 3 {
      return true
    }
    return false
  }
  
  func saveText() {
    dataArray.append(textFieldText)
    textFieldText = ""
  }
}

#Preview {
    TextFieldsBootcamp()
}
