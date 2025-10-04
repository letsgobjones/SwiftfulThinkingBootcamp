//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 8/11/25.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
Image(systemName: "person.fill.badge.plus")
        .renderingMode(.original)
        .resizable()
//        .aspectRatio(contentMode: .fit)
        .scaledToFill()
//        .font(.system(size: 200))
//        .foregroundColor(.red)
        .frame(width: 300, height: 300)
        .clipped()
      
      
      
      Image(systemName: "paperplane.fill")
      
      Image(systemName: "book.fill")
      
      
      
    }
}

#Preview {
    IconsBootcamp()
}
