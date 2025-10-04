//
//  GirdBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 8/15/25.
//

import SwiftUI

struct GirdBootcamp: View {
  
  let rows: [GridItem] = [
    GridItem(.flexible(), spacing: 6, alignment: nil),
//    GridItem(.flexible(), spacing: nil, alignment: nil),
//    GridItem(.flexible(), spacing: nil, alignment: nil),
  ]
  var body: some View {
    ScrollView(.horizontal) {
      
      Rectangle()
        .fill(Color.red)
        .frame(height: 400)
      
      
      LazyHGrid(rows: rows,
             alignment: .center,
             spacing: 6,
             pinnedViews: [.sectionHeaders]) {
     
     Section(header:
              Text("Section 1")
      .foregroundColor(.white)
      .font(.title)
      .frame(maxWidth: .infinity, alignment: .leading)
      .background(.blue)
      .padding()
     ) {
       ForEach(0..<20) { index in
         Rectangle()
           .frame(height: 150)
         //          .foregroundColor(.green)
       }
     }
     
     
     Section(header:
              Text("Section 2")
      .foregroundColor(.white)
      .font(.title)
      .frame(maxWidth: .infinity, alignment: .leading)
      .background(.red)
      .padding()
     ) {
       ForEach(0..<20) { index in
         Rectangle()
           .frame(height: 150)
                   .foregroundColor(.green)
       }
     }
     
     
     
     
   }
     
    }
  }
}

#Preview {
    GirdBootcamp()
}
