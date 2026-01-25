//
//  FocusStateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 1/4/26.
//

import SwiftUI

struct FocusStateBootcamp: View {
  
  enum OnboardingFields: Hashable {
    case username
    case password
  }
  
//  @FocusState private var userNameInFocus: Bool
  @State private var username: String = ""

//  @FocusState private var passwordInFocus: Bool
  @State private var password: String = ""
  @FocusState private var fieldInFocus: OnboardingFields?
  
    var body: some View {
      VStack(spacing: 30) {
        TextField("Add your your name here...", text: $username)
          .focused($fieldInFocus, equals: .username)
          .padding(.leading, 40)
          .frame(height: 55)
          .frame(maxWidth: .infinity)
          .background(Color.gray.opacity(0.3), in: RoundedRectangle(cornerRadius: 10))
        
        
        SecureField("Add your your password here...", text: $password)
          .focused($fieldInFocus, equals: .password)
          .padding(.leading, 40)
          .frame(height: 55)
          .frame(maxWidth: .infinity)
          .background(Color.gray.opacity(0.3), in: RoundedRectangle(cornerRadius: 10))
        
        Button("SIGN UP 🚀") {
          let usernameIsValid = !username.isEmpty
          let passwordIsValid = !password.isEmpty
          if usernameIsValid && passwordIsValid {
            print("SIGN UP")
          } else  if usernameIsValid {
//            userNameInFocus = false
//            passwordInFocus = true
            fieldInFocus = .password
            
          } else {
            fieldInFocus = .username
          }
          //        Button("TOOGLE FOCUS STATE") {
          //          userNameInFocus.toggle()
          //        }
        }
        //      .task {
        //        try? await Task.sleep(for: .seconds(10))
        //        guard !Task.isCancelled else { return }
        //
        //        userNameInFocus = true
        //      }
      }
      .padding(40)
    }
}

#Preview {
    FocusStateBootcamp()
}
