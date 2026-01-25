//
//  OnboardingView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 12/27/25.
//

import SwiftUI

struct OnboardingView: View {
  
  // Onbarding states:
  /*
   0 - Welcome Screen
   1 - Add name
   2 - Add Age
   3 - Add gender
   */
  @State var onboardingState: Int = 0
  let transition: AnyTransition = .asymmetric(
    insertion: .move(edge: .trailing),
    removal: .move(edge: .leading))
  
  // onbarding inputs
  @State var name: String = ""
  @State var age: Double = 50
  @State var gender: String = ""
  
  // for the alert
  @State var alertTitle: String = ""
  @State var showAlert: Bool = false
  
  // app storage
  @AppStorage("name") var currentUserName: String?
  @AppStorage("age") var currentUserAge: Int?
  @AppStorage("gender") var currentUserGender: String?
  @AppStorage("signed_in") var currentUserSignedIn: Bool = false
  
  var body: some View {
    ZStack {
      //content
      ZStack{
        switch onboardingState {
        case 0:
          WelcomeSectionView()
            .transition(transition)
        case 1:
          AddNameSectionView(name: $name)
            .transition(transition)
        case 2:
          AddAgeSectionView(age: $age)
            .transition(transition)
        case 3:
          AddGenderSectionView(gender: $gender)
            .transition(transition)
          
        default:
          RoundedRectangle(cornerRadius: 25.0)
            .foregroundStyle(.green)
        }
        
      }
      // buttons
      VStack {
        Spacer()
        bottomButton(onboardingState: $onboardingState, action: handleNextButtonPressed)
      }
      .padding(30)
    }
    .alert(isPresented: $showAlert) {
      return Alert(title: Text(alertTitle))
    }
  }
}

#Preview {
  OnboardingView()
    .background(Color.purple)
}


struct bottomButton: View {
  @Binding var onboardingState: Int
  let action: () -> Void
  var body: some View {
    Text(onboardingState == 0 ? "SIGN UP" : onboardingState == 3 ? "FINISH" : "NEXT")
      .font(.headline)
      .foregroundStyle(.purple)
      .frame(height: 55)
      .frame(maxWidth: .infinity)
      .background(.white)
      .clipShape(RoundedRectangle(cornerRadius: 10))
      .animation(.none, value: onboardingState)
      .onTapGesture {
        action()
      }
  }
}


struct WelcomeSectionView: View {
  var body: some View {
    VStack(spacing: 40) {
      Spacer()
      Image(systemName: "heart.text.square.fill")
        .resizable()
        .scaledToFit()
        .frame(width: 200, height: 200)
        .foregroundStyle(.white)
      
      Text("Find your match.")
        .font(.largeTitle)
        .fontWeight(.semibold)
        .foregroundStyle(.white)
        .overlay(
          Capsule(style: .continuous)
            .frame(height: 3)
            .offset(y: 5)
            .foregroundStyle(.white),
          alignment: .bottom
        )
      Text("This is the #1 app for finding your match online! In this tutorial we are practicing using AppStorage and other SwiftUI techniques.")
        .fontWeight(.medium)
        .foregroundColor(.white)
      
      Spacer()
      Spacer()
    }
    .multilineTextAlignment(.center)
    .padding(30)
  }
}


struct AddNameSectionView: View {
  @Binding var name: String
  var body: some View {
    
    VStack(spacing: 40){
      Spacer()
      Text("What's your name?")
        .font(.largeTitle)
        .fontWeight(.semibold)
        .foregroundStyle(.white)
      TextField("Your name here...", text: $name)
        .font(.headline)
        .foregroundStyle(.purple)
        .frame(height: 55)
        .padding(.horizontal)
        .background(.white, in: RoundedRectangle(cornerRadius: 10))
      Spacer()
      Spacer()
    }
    .padding(30)
  }
}

struct AddAgeSectionView: View {
  @Binding var age: Double
  var body: some View {
    VStack(spacing: 40){
      Spacer()
      Text("What's your age?")
        .font(.largeTitle)
        .fontWeight(.semibold)
        .foregroundStyle(.white)
      
      
      Text("\(String(format: "%.0f", age))")
        .font(.largeTitle)
        .fontWeight(.semibold)
        .foregroundStyle(.white)
      
      Slider(value: $age, in: 18...100, step: 1)
        .tint(.white)
      
      Spacer()
      Spacer()
    }
    .padding(30)
  }
}


struct AddGenderSectionView: View {
  @Binding var gender: String
  var body: some View {
    VStack(spacing: 40){
      Spacer()
      Text("What's your gender?")
        .font(.largeTitle)
        .fontWeight(.semibold)
        .foregroundStyle(.white)
      
      Menu {
        Picker(selection: $gender) {
          Text("Male").tag("Male")
          Text("Female").tag("Female")
          Text("Non-Binary").tag("Non-Binary")
        } label: {
          Text("Gender Picker")
            .font(.headline)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.white, in: RoundedRectangle(cornerRadius: 10))
        }
        .pickerStyle(.menu)
      } label: {
        Text(gender.count > 1 ? gender : "Select a gender")
          .font(.headline)
          .foregroundStyle(.purple)
          .frame(height: 55)
          .frame(maxWidth: .infinity)
          .background(.white, in: RoundedRectangle(cornerRadius: 10))
      }
      Spacer()
      Spacer()
    }
    .padding(30)
  }
}


// MARK: Functions

extension OnboardingView {
  func handleNextButtonPressed() {
    // CHECK INPUTS
    switch onboardingState {
    case 1:
      guard name.count >= 3 else {
        showAlert(title: "Your name must be at least 3 characters long! 😳")
        return
      }
      
    case 3:
      guard gender.count > 1 else {
        showAlert(title: "Please select a gender before moving forward! 😩")
        return
      }
    default:
      break
      
    }
    
    // GO TO NEXT SECTION
    if onboardingState == 3 {
      signIn()
    } else {
      withAnimation(.spring()) {
        onboardingState += 1
      }
    }
  }
  
  func signIn() {
    currentUserName = name
    currentUserAge = Int(age)
    currentUserGender = gender
    withAnimation(.spring()) {
      currentUserSignedIn = true
    }
  }
  
  
  func showAlert(title: String) {
    alertTitle = title
    showAlert.toggle()
  }
}
