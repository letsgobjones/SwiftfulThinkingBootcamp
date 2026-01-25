//
//  ProfileView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 12/30/25.
//

import SwiftUI

struct ProfileView: View {
  
  // app storage
  @AppStorage("name") var currentUserName: String?
  @AppStorage("age") var currentUserAge: Int?
  @AppStorage("gender") var currentUserGender: String?
  @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    var body: some View {
      VStack(spacing: 20) {
        Image(systemName: "person.circle.fill")
          .resizable()
          .scaledToFit()
          .frame(width: 150, height: 150)
        
        Text(currentUserName ?? "You name here")
        Text("This user is \(currentUserAge ?? 0) years old!")
        Text("Thier gender is \(currentUserGender ?? "unknown")")
        
        Text("SIGN OUT")
          .foregroundStyle(.white)
          .frame(height: 55)
          .frame(maxWidth: .infinity)
          .background(.black, in: RoundedRectangle(cornerRadius: 10))
          .onTapGesture {
           signOut()
          }
      }
      
      .font(.title)
      .foregroundStyle(.purple)
      .padding()
      .padding(.vertical, 40)
      .background(.white, in: RoundedRectangle(cornerRadius: 10))
      .shadow(radius: 10)
    }
}

#Preview {
    ProfileView()
}

extension ProfileView {
  func signOut() {
    currentUserName = nil
    currentUserAge = nil
    currentUserGender = nil
    withAnimation(.spring()) {
      currentUserSignedIn = false
    }
  }
}
