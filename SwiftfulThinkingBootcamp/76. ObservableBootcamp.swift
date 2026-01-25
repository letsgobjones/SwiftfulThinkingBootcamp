//
//  ObservableBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 1/25/26.
//

import SwiftUI

@Observable
class ObservableViewModel {
  var title: String = "Some title"
  @ObservationIgnored var value: String = "Ignore me"
}




struct ObservableBootcamp: View {
  @State private var viewModel = ObservableViewModel()
    var body: some View {
      VStack(spacing: 40){
        Button(viewModel.title) {
          viewModel.title = "New title"
        }
        
        SomeChildView(viewModel: viewModel)
        SomeThirdView()
      }
      .environment(viewModel)
    }
}

struct SomeChildView: View {
  @Bindable var viewModel: ObservableViewModel
  var body: some View {

    Button(viewModel.title) {
      viewModel.title = "ajajsjjjd"
    }
    
  }
}
struct SomeThirdView: View {
  @Environment(ObservableViewModel.self)  var viewModel
  
  var body: some View {
    Button(viewModel.title) {
      viewModel.title = "Third View"
    }
  }
}


#Preview {
    ObservableBootcamp()
}
