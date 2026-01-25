//
//  ListSwipeActionsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 1/2/26.
//

import SwiftUI

struct ListSwipeActionsBootcamp: View {
  @State var fruits: [String] = ["Apple", "Orange", "Banana", "Peach"]
  
    var body: some View {
      List{
        ForEach(fruits, id: \.self) {
          Text($0.capitalized)
            .swipeActions(edge: .trailing, allowsFullSwipe: false) {
              Button("Archive") {
                
              }
              .tint(.orange)
              
              Button("Save") {
                
              }
              .tint(.green)
              
              Button("Junk") {
                
              }
              .tint(.red)
            }
            .swipeActions(edge: .leading, allowsFullSwipe: true) {
              Button("Share") {
                
              }
              .tint(.yellow)
            }
        }
//        .onDelete(perform: delete)
      }
    }
}

#Preview {
    ListSwipeActionsBootcamp()
}

extension ListSwipeActionsBootcamp {

  func delete(indexSet: IndexSet) {
    //
  }
  
  
  
  
}

