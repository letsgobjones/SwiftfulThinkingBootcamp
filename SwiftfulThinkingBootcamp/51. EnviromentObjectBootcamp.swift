//
//  EnviromentObjectBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 10/23/25.
//

import SwiftUI

struct EnviromentObjectBootcamp: View {
  @StateObject var viewModel = EnviromentViewModel()
  
  var body: some View {
    NavigationStack{
      List{
        ForEach(viewModel.dataArray, id: \.self) { item in
          NavigationLink {
            DetailView(selectedItem: item)
          } label: {
            Text(item)
          }
        }
      }
      .navigationTitle("iOS Devices")
    }.environmentObject(viewModel)
  }
}

#Preview {
  EnviromentObjectBootcamp()
  //  DetailView(selectedItem: "iPhone")
  //  FinalView()
}


class EnviromentViewModel: ObservableObject {
  @Published var dataArray: [String] = []
  
  init(){
    getData()
  }
  
  func getData() {
    dataArray.append(contentsOf: ["iPhone", "iPad", "Apple Watch", "Macbook Air", "Macbook Pro", "iMac"])
  }
}


struct DetailView: View {
  let selectedItem: String
  var body: some View {
    // Background
    ZStack {
      Color.orange
        .ignoresSafeArea()
      
      // Foreground
      NavigationLink {
        FinalView()
      } label: {
        Text(selectedItem)
          .font(.headline)
          .foregroundStyle(.orange)
          .padding()
          .padding(.horizontal)
          .background(.white)
          .clipShape(RoundedRectangle(cornerRadius: 30))
      }
    }
  }
}


struct FinalView: View {
@EnvironmentObject var viewModel: EnviromentViewModel
  var body: some View {
    ZStack {
      LinearGradient(colors: [Color.blue, Color.purple], startPoint: .leading, endPoint: .bottomTrailing)
        .ignoresSafeArea()
    
      ScrollView {
        VStack(spacing:20) {
          ForEach(viewModel.dataArray, id: \.self) { item in
            Text(item)
          }
        }
        .foregroundStyle(.white)
        .font(.largeTitle)
        .padding()
      }
    }
  }
}

