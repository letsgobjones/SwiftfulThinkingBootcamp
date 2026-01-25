//
//  IntroView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 12/27/25.
//

import SwiftUI

struct IntroView: View {
  @AppStorage("signed_in") var currentUserSignedIn: Bool = false
  var body: some View {
    ZStack {
      RadialGradient(colors: [Color.purple, Color.blue], center: .topLeading, startRadius: 5, endRadius: 500)
        .ignoresSafeArea()
      
      
      if currentUserSignedIn {
        ProfileView()
          .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
      } else {
        OnboardingView()
          .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
      }
    }
    .animation(.spring(), value: currentUserSignedIn)
  }
}

#Preview {
  IntroView()
}
