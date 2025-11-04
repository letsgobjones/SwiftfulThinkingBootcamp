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
    UserModel(displayName: "Nick", userName: "Nick123", followerCount: 100, isVerified: true),
    UserModel(displayName: "Brandon", userName: "Brandon69", followerCount: 1098, isVerified: false),

    UserModel(displayName: "Paul", userName: "Paul102", followerCount: 486, isVerified: true),
    UserModel(displayName: "Chris", userName: "Chris90", followerCount: 192, isVerified: false)
  ]
  
  
    var body: some View {
      NavigationStack {
        List {
          ForEach(users) { name in
            HStack(spacing: 15) {
              Circle()
                .frame(width: 35, height: 35)
              VStack(alignment: .leading) {
                Text(name.displayName)
                  .font(.headline)
                Text("@\(name.userName)")
                  .foregroundColor(.secondary)
                  .font(.caption)
              }
              Spacer()
              if name.isVerified {
                Image(systemName: "checkmark.seal.fill")
                  .foregroundColor(.blue)
              }
              VStack {
                Text("\(name.followerCount)")
                  .font(.headline)
                Text("Followers")
                  .foregroundColor(.secondary)
                  .font(.caption)
              }
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
  let isVerified: Bool
  
}
