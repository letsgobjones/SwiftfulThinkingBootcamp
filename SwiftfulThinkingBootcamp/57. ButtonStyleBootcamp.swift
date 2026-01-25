//
//  ButtonStyleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 1/2/26.
//

import SwiftUI

struct ButtonStyleBootcamp: View {
  var body: some View {
    VStack {
      
      Button {
        //
      } label: {
        Text("Custom")
          .frame(height: 55)
          .frame(maxWidth:.infinity)
      }
      .controlSize(.large)
      .buttonBorderShape(.roundedRectangle)
      .buttonStyle(.borderedProminent)

      
      
      
      Button("Plain") {
        //
      }
      .font(.headline)
      .frame(height: 55)
      .frame(maxWidth:.infinity)
      .buttonStyle(.plain)
      
      Button("Boarded") {
        //
      }
      .font(.headline)
      .frame(height: 55)
      .frame(maxWidth:.infinity)
      .buttonStyle(.bordered)
      
      
      Button("Bordered Prominent") {
        //
      }
      .font(.headline)
      .frame(height: 55)
      .frame(maxWidth:.infinity)
      .buttonStyle(.borderedProminent)
      
      
      Button("Borderless") {
        //
      }
      .font(.headline)
      .frame(height: 55)
      .frame(maxWidth:.infinity)
      .buttonStyle(.borderless)
      
      
      
      Button("Extra Large") {
        //
      }
      .font(.headline)
      .frame(height: 55)
      .frame(maxWidth:.infinity)
      .controlSize(.extraLarge)
      .buttonStyle(.borderedProminent)
      
      Button("Large") {
        //
      }
      .font(.headline)
      .frame(height: 55)
      .frame(maxWidth:.infinity)
      .controlSize(.large)
      .buttonStyle(.borderedProminent)
      
      Button("Regular") {
        //
      }
      .font(.headline)
      .frame(height: 55)
      .frame(maxWidth:.infinity)
      .controlSize(.regular)
      .buttonStyle(.borderedProminent)
      
      
      Button("Mini") {
        //
      }
      .font(.headline)
      .frame(height: 55)
      .frame(maxWidth:.infinity)
      .controlSize(.mini)
      .buttonStyle(.borderedProminent)
      
      Button("Small") {
        //
      }
      .font(.headline)
      .frame(height: 55)
      .frame(maxWidth:.infinity)
      .controlSize(.small)
      .buttonStyle(.borderedProminent)
     
      
      
      
    }
    .padding()
  }
}

#Preview {
  ButtonStyleBootcamp()
}
