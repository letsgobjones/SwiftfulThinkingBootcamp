//
//  ListBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 8/18/25.
//

import SwiftUI

struct ListBootcamp: View {
  @State var fruits: [String] = ["Apple", "Orange", "Banana", "Peach"]
  @State var veggies: [String] = ["Carrot", "Spinach", "Potato"]
  
  var body: some View {
    NavigationStack {
      List {
        Section(header: Text("Fruits")) {
          ForEach(fruits, id: \.self) { fruit in
            Text(fruit)
              .padding(.vertical)
          }
          .onDelete(perform: delete)
          .onMove(perform: move)
          .listRowBackground(Color.green)
          
        }
        
        Section(header: Text("Veggies")) {
          ForEach(veggies, id: \.self) { veggie in
            Text(veggie)
          }
        }
      }
      .tint(.red)
      
     
      .navigationTitle(Text("Grocery List"))
      .toolbar {
        ToolbarItem(placement: .topBarLeading) {
          EditButton()
        }
        ToolbarItem(placement: .topBarTrailing) {
          addButton
        }
      }
    }
  }
  
  
  var addButton: some View {
    Button("Add") {
      add()
    }
  }
  
  func delete(indexSet: IndexSet) {
    fruits.remove(atOffsets: indexSet)
    
  }
  
  func move(indices: IndexSet, newOffset: Int) {
    fruits.move(fromOffsets: indices,
                toOffset: newOffset)
  }
  
  
  func add() {
    fruits.append("Coconut")
  }
}



#Preview {
  ListBootcamp()
}
