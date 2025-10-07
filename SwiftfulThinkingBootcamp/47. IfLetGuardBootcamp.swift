//
//  IfLetGuardBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 10/7/25.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
  @State var currentUserID: String? = "AJHJSHSH"
  @State var displayText: String? = nil
  @State var isLoading: Bool = false
  var body: some View {
    NavigationStack {
      VStack {
        Text("Here we are practicing safe coding")
        
      
          Text(displayText ?? "No Data")
            .font(.headline)
        
        if isLoading {
          ProgressView()
        }
        
        //        Text(displayText)
        //          .font(.title)
        Spacer()
      }
      .navigationTitle("Safe Coding")
      .onAppear {
        loadData2()
      }
    }
  }
  
  
  func loadData() {
    
    if let userID = currentUserID {
      isLoading = true
      DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
        displayText = "This is the new Data! User id is: \(userID)"
        isLoading = false
      }
      
      
//      Task {
//        try await Task.sleep(for: .seconds(6))
//        displayText = "This is the new Data 2"
//        isLoading = false
//      }
    } else {
      displayText = "Error. There is No User ID"
    }
  }
  
  
  func loadData2() {
    guard let userID = currentUserID else {
      displayText = "Error. There is No User ID"
      return
    }
    
    isLoading = true
    
    Task {
      try await Task.sleep(for: .seconds(6))
      displayText = "This is the new Data 2: \(userID)"
      isLoading = false
    }
    
    
  }
}

#Preview {
    IfLetGuardBootcamp()
}
