//
//  ViewModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 10/21/25.
//

import SwiftUI

struct ViewModelBootcamp: View {
  // @StateObject -< USE THIS ON CREATION / INIT
  // @ObservedObject -> USE THIS FOR SUBVIEWS
  @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
  var body: some View {
    NavigationStack {
      List{
        if fruitViewModel.isLoading {
          ProgressView()
        } else {
          ForEach(fruitViewModel.fruitArray) { fruit in
            HStack {
              Text("\(fruit.count)")
                .foregroundStyle(.red)
              Text(fruit.name)
            }
          }
          .onDelete(perform: fruitViewModel.deleteFruit)
        }
      }
      .navigationTitle("Fruit List")
      .toolbar(content: {
        NavigationLink {
          RandomScreen(fruitViewModel: fruitViewModel)
        } label: {
          Image(systemName: "arrow.right")
            .font(.largeTitle)
        }

       
      })
      .listStyle(.grouped)
    }
  }
}

struct RandomScreen: View {
  @ObservedObject var fruitViewModel: FruitViewModel
  @Environment(\.dismiss) var dismiss
  var body: some View {
    ZStack {
      Color.green
        .ignoresSafeArea()
      
      VStack {
        ForEach(fruitViewModel.fruitArray) { fruit in
          Text(fruit.name)
        }
        .padding()
        
        
        
        
        Button {
          dismiss()
        } label: {
          Text("GO BACK")
            .foregroundStyle(.white)
            .font(.largeTitle)
            .fontWeight(.semibold)
        }
        
      }
    }
  }
  
}


#Preview {
  ViewModelBootcamp()
}


struct FruitModel: Identifiable {
  let id: UUID = UUID()
  let name: String
  let count: Int
}


class FruitViewModel: ObservableObject {
  @Published var fruitArray: [FruitModel] = []
  @Published var isLoading: Bool = false
  
  init() {
    Task {
      await getFruits()
      
    }
  }
  func getFruits() async {
    let fruit1 = FruitModel(name: "Pineapples", count: 6)
    let fruit2 = FruitModel(name: "Bananas", count: 3)
    let fruit3 = FruitModel(name: "Oranges", count: 2)
    let fruit4 = FruitModel(name: "Strawberries", count: 5)
    let fruit5 = FruitModel(name: "Watermelon", count: 1)
    
    //    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
    //
    //    }
    isLoading = true
    try? await Task.sleep(for: .seconds(2))
    
    fruitArray.append(contentsOf: [fruit1, fruit2, fruit3, fruit4, fruit5])
    
    isLoading = false
    
  }
  
  func deleteFruit(index: IndexSet) {
    fruitArray.remove(atOffsets: index)
  }
}
