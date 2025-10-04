//
//  TabViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 10/3/25.
//

import SwiftUI

struct TabViewBootcamp: View {
  @State var selectedTab: Int = 0
  
  let icons: [String] = ["heart.fill", "house.fill", "globe", "person.fill"]
  var body: some View {
//    TabView(selection: $selectedTab) {
//      Tab(value: 0) {
//        HomeView(selectedTab: $selectedTab)
//      } label: {
//        Image(systemName: "house.fill")
//        Text("Home")
//      }
//      
// 
//      Tab(value: 1) {
//       Text("Browse Tab")
//      } label: {
//        Image(systemName: "globe")
//        Text("Browse")
//      }
//      
//      
//      Tab(value: 2) {
//       Text("Profile Tab")
//      } label: {
//        Image(systemName: "person.fill")
//        Text("Profile")
//      }
//    }
//    .tint(.red)
    
    
//    TabView {
      //      RoundedRectangle(cornerRadius: 25.0)
      //        .foregroundStyle(.red)
      //      RoundedRectangle(cornerRadius: 25.0)
      //        .foregroundStyle(.green)
      //      RoundedRectangle(cornerRadius: 25.0)
      
//    }
//    .frame(height: 300)
//    .tabViewStyle(.page)
    
      TabView {
      ForEach(icons, id: \.self) { icon in
        Image(systemName: icon)
          .resizable()
          .scaledToFit()
          .padding(30)
        
      }
     

    }
      .background(
        
        RadialGradient(colors: [Color.red, Color.blue], center: .center, startRadius: 10, endRadius: 400)
        
      )
      .frame(height: 300)
      .tabViewStyle(.page)
//      .indexViewStyle(.page(backgroundDisplayMode: .always))
  
    
  }
}

#Preview {
  TabViewBootcamp()
}


struct HomeView: View {
  @Binding var selectedTab: Int
  var body: some View {
    ZStack {
      Color.red
        .ignoresSafeArea()
      
      VStack {
        Text("Home View")
          .font(.largeTitle)
          .foregroundStyle(.white)
        
        Button {
          selectedTab = 2
        } label: {
          Text("Go to profile")
            .font(.headline)
            .padding()
            .padding(.horizontal)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        
      }
    }
  }
}
