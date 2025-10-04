//
//  AlertBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 8/18/25.
//

import SwiftUI

struct AlertBootcamp: View {
  
  @State var showAlert: Bool = false
//  @State var  alertTitle: String = ""
//  @State var alertMessage: String = ""
  @State var backgroundColor: Color = .yellow
  @State var alertType: MyAlerts? = nil
  enum MyAlerts {
    
    case succes
    case error
  }
  var body: some View {
    
    ZStack {
      backgroundColor
        .ignoresSafeArea(.all)
      
      VStack {
        Button("Click here") {
          alertType = .error
//          alertTitle = "Error"
//          alertMessage = "This is an error message"
          showAlert.toggle()
        }
        
        Button("Click here") {
          alertType = .succes
//          alertTitle = "Success"
//          alertMessage = "This is a success message"
          showAlert.toggle()
        }
      }.alert(isPresented: $showAlert) {
        getAlert()
      }
    }
  }
    func getAlert() -> Alert {
//      return Alert(title: Text(alertTitle),
//                   message: Text(alertMessage),
//                   dismissButton: .default(Text("Ok")))
      
      switch alertType {
      case .error:
        return Alert(title: Text("Error"),
                     message: Text("This is an error message"),
                     dismissButton: .default(Text("Ok")))
      case .succes:
        return Alert(title: Text("Success"),
                     message: Text("This is a success message"),
                     dismissButton: .default(Text("Ok")))
      default:
        return Alert(title: Text("Error"),
                     message: Text("This is an error message"),
                     dismissButton: .default(Text("Ok")))
      }
    }
}

#Preview {
    AlertBootcamp()
}
