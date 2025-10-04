//
//  ButtonsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 8/16/25.
//

import SwiftUI

struct ButtonsBootcamp: View {
  
  @State var title: String = "This is my title"
    var body: some View {
  

      VStack {
        Text(title)
        
        Button("Press me!") {
          self.title = "Button was pressed"
          print("Button was pressed")
        }
        .accentColor(.red)
        
        Button {
          self.title = "Button #2 was pressed"
        } label: {
          Text("Save".uppercased())
            .font(.headline)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal, 20)
            .padding(.horizontal)
            .background(Color.blue
              .cornerRadius(10)
              .shadow(radius: 10)
            
            )
          
        }
        
        Button {
          self.title = "Button #3 was pressed"

        } label: {
          Circle()
            .fill(Color.white)
            .frame(width: 75, height: 75)
            .shadow(radius: 10)
            .overlay {
              Image(systemName: "heart.fill")
                .font(.largeTitle)
                .foregroundColor(.red)
            }
        }

        
        Button {
          self.title = "Button #4 was pressed"

        } label: {
          Text("Finish".uppercased())
            .font(.caption)
            .fontWeight(.bold)
            .foregroundStyle(.gray)
            .padding()
            .padding(.horizontal, 10)
            .background(
              
              Capsule()
                .stroke(Color.gray, lineWidth: 3.0)
            )
        }

        
        
         
        }

        
        
      }
      
      
      
      
      
      
    }


#Preview {
    ButtonsBootcamp()
}
