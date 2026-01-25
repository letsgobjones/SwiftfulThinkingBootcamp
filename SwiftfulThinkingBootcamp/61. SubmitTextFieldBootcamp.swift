//
//  SubmitTextFieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 1/14/26.
//

import SwiftUI

struct SubmitTextFieldBootcamp: View {
  @State private var text: String = ""
    var body: some View {
        TextField("Placeholder...", text: $text)
        .submitLabel(.return)
        .onSubmit {
          print("Something to the console!")
        }
      
      TextField("Placeholder...", text: $text)
        .submitLabel(.done)
      .onSubmit {
        print("Something to the console!")
      }
      
      TextField("Placeholder...", text: $text)
        .submitLabel(.go)
      .onSubmit {
        print("Something to the console!")
      }
      
      
    }
}

#Preview {
    SubmitTextFieldBootcamp()
}
