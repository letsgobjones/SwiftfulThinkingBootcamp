//
//  BackgroundMaterialsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 1/2/26.
//

import SwiftUI

struct BackgroundMaterialsBootcamp: View {
  var body: some View {
    VStack {
      Spacer()
      
      VStack {
      RoundedRectangle(cornerRadius: 4)
          .frame(width: 50, height: 4)
          .padding()
        Spacer()
      }
      .frame(height: 350)
      .frame(maxWidth: .infinity)
      .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30))
    }
    .ignoresSafeArea()
    .background(
      Image("brandon1")
    )
  }
}

#Preview {
    BackgroundMaterialsBootcamp()
}
