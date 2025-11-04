//
//  AppStorageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 10/27/25.
//

import SwiftUI

struct AppStorageBootcamp: View {

  @AppStorage("name") var currentUserName: String?
  var body: some View {
    VStack(spacing: 20) {
      
      Text(currentUserName ?? "Add Name Here")
      
      if let name = currentUserName {
      Text(name)
      }
      
      Button("Save".uppercased()) {
        let name = "Brandon Jones"
        currentUserName = name
//        UserDefaults.standard.set(name, forKey: "name")
      }
    }
//    .onAppear {
//      currentUserName = UserDefaults.standard.string(forKey: "name")
//    }
  }
}

#Preview {
    AppStorageBootcamp()
}
