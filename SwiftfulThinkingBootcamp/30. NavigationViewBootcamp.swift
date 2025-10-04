//
//  NavigationViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 8/18/25.
//

import SwiftUI

struct NavigationViewBootcamp: View {
  var body: some View {
    NavigationStack {
      ScrollView {
        NavigationLink {
        MyOtherScreen()
        } label: {
          Text("Hello World")
        }

        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Text("Hello, World!")
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
      }
      .navigationTitle("All Inboxes")
//      .toolbar{
//     
//      }
//      .toolbar(.hidden)
      .toolbar {
        ToolbarItem(placement: .topBarLeading) {
          
          NavigationLink {
            MyOtherScreen()
          } label: {
            Image(systemName: "person.fill")
          }
          
        }
        
        
        ToolbarItem(placement: .topBarTrailing) {
         Image(systemName: "gear")
        }
        
        
      }
    
    }
  }
}


struct MyOtherScreen: View {
  @Environment(\.dismiss) var dismiss
  var body: some View {
    
    ZStack {
      Color.green
        .ignoresSafeArea()
      VStack {
        Text("Hello World")
        
        Button("Dismiss") {
          dismiss()
        }
        
        NavigationLink("Go Forward") {
          Text("3rd Screen")
        }
      }
    }
    
  }
  
  
}

#Preview {
    NavigationViewBootcamp()
}
