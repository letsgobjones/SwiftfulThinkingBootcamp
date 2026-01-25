//
//  ContentUnavailableViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 1/25/26.
//

import SwiftUI

struct ContentUnavailableViewBootcamp: View {
  var body: some View {
    ContentUnavailableView(
      "No Internet Connection",
      systemImage: "wifi.slash",
      description: Text("Please connect to the internet and try again.")
    )
  }
}

#Preview {
  ContentUnavailableViewBootcamp()
}
