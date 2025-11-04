//
//  ModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 10/7/25.
//

import SwiftUI

struct ModelBootcamp: View {
  
//  @State var users: [String] = [
//    "Nick", "Emily", "Samantha", "Chris"
//  ]
  
  @State var users: [UserModel] = [
UserModel(displayName: "Nick", userName: "Nick123", followerCount: 100),
UserModel(displayName: "Brandon", userName: "Brandon69", followerCount: 1098),

UserModel(displayName: "Paul", userName: "Paul102", followerCount: 486),
UserModel(displayName: "Chris", userName: "Chris90", followerCount: 192)
  ]
  
  
    var body: some View {
      NavigationStack {
        List {
          ForEach(users) {name in
            HStack(spacing: 15) {
              Circle()
                .frame(width: 35, height: 35)
              Text(name.displayName)
            }
            .padding(.vertical, 10)
            
          }
        }
//        .listStyle(.insetGrouped)
        .navigationTitle(Text("Users"))
      }
    }
}

#Preview {
    ModelBootcamp()
}


struct UserModel: Identifiable {
  let id: String = UUID().uuidString
  let displayName: String
  let userName: String
  let followerCount: Int
  
  
}
