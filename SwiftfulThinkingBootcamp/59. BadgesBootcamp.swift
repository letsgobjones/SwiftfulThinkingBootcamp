//
//  BadgesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 1/4/26.
//

import SwiftUI
// List
// TabView

struct BadgesBootcamp: View {
  var body: some View {
    
    List {
      Text("Hello")
        .badge(5)
      
      Text("Hello")
        .badge("NEW")
      
      Text("Hello")
        .badge(0)
    }
    
    
    
    TabView {
      Color.red
        .tabItem {
          Image(systemName: "heart.fill")
          Text("Hello")
        }.badge(5)
      
      Color.green
        .tabItem {
          Image(systemName: "heart.fill")
          Text("Hello")
        }.badge("NEW")
      
      Color.blue
        .tabItem {
          Image(systemName: "heart.fill")
          Text("Hello")
            .badge(0)
        }
      
    }
  }
}

#Preview {
    BadgesBootcamp()
}
