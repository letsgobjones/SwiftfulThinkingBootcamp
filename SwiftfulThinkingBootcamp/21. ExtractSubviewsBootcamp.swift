//
//  ExtractSubviewsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 8/16/25.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
      ZStack {
        Color.blue
          .ignoresSafeArea()
        
     
        
        HStack {
          MyItem(title: "Apples", count: 1, color: .red)
          MyItem(title: "Oranges", count: 2, color: .orange)
          MyItem(title: "Bananas", count: 3, color: .yellow)
          
        }
        
      }
    }
}

#Preview {
    ExtractSubviewsBootcamp()
}





struct MyItem: View {
  let title: String
  let count: Int
  let color: Color
  var body: some View {
    VStack {
      Text("\(count)")
      Text(title)
      
      
    }
    .padding()
    .background(color)
    .clipShape(RoundedRectangle(cornerRadius: 10))
  }
}
