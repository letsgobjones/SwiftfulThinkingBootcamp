//
//  NavigationSplitViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 1/22/26.
//

import SwiftUI

struct NavigationSplitViewBootcamp: View {
  @State private var visibility: NavigationSplitViewVisibility = .all
  @State private var selectedCategory: FoodCategory? = nil
  @State private var selectedFruit: Fruit? = nil
  
  var body: some View {
    
    
    NavigationSplitView(columnVisibility: $visibility) {
      List(FoodCategory.allCases, id: \.rawValue, selection: $selectedCategory) {
        category in
        NavigationLink(category.rawValue.capitalized, value: category)
        
      }
      .navigationTitle("Categories")
    } content: {
      if let selectedCategory {
        
          Group {
            switch selectedCategory {
            case .fruits:
              
           
              List(Fruit.allCases, id: \.rawValue, selection: $selectedFruit) { fruit in
                NavigationLink(fruit.rawValue.capitalized, value: fruit)
              }
            
            
        
        case .vegetables:
          EmptyView()
        case .meats:
          EmptyView()
        }
          }
          .navigationTitle("Fruits")
        
      } else {
        Text("Select a cateory to begin!")
      }
      
      
      
    } detail: {
      if let selectedFruit {
        Text("You selected: \(selectedFruit.rawValue.capitalized)")
          .font(.largeTitle)
          .navigationTitle(selectedFruit.rawValue.capitalized)
      } else {
        Text("Select something")
      }
    }
    .navigationSplitViewStyle(.balanced)
    
    
  }
}

#Preview {
  NavigationSplitViewBootcamp()
}



enum FoodCategory: String, CaseIterable {
  case fruits, vegetables, meats
}

enum Fruit: String, CaseIterable {
  case apple, orange, banana, peach
}
