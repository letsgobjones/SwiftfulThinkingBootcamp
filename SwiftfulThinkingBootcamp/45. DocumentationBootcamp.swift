//
//  DocumentationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 10/4/25.
//

import SwiftUI

struct DocumentationBootcamp: View {
  // MARK: - PROPERTIES
  @State var data: [String] = [
    "Apples", "Oranges", "Bananas"
  ]
  @State var showAlert: Bool = false
  
  // MARK: - BODY
  

  //   Working copy - things to do:
  /*
   1) Fix title
    Fix alert
   Fix toolbar
   Fix navigation
   */
  
  var body: some View {
    NavigationStack { // START: NAV
      ZStack {
        
        // background
        Color.red
          .ignoresSafeArea()
        
        // foreground
        foregroundLayer(data: $data)
        .navigationTitle("Documentation")
        .toolbar {
          ToolbarItem(placement: .topBarTrailing) {
            Button("Alert") {
              showAlert.toggle()
            }
          }
        }
        .alert("This is an alert", isPresented: $showAlert) {
          Button("Ok") {}
          Button("Cancel") {}
        }
      }
    } // END: NAV
  }
}

// MARK: - PREVIEW
#Preview {
  DocumentationBootcamp()
}


/// This is the foreground layer that holds a scrollView.
struct foregroundLayer: View {
  @Binding var data: [String]
  var body: some View {
    ScrollView { // START: SCROLLV
      Text("Hello")
      ForEach(data, id: \.self) { name in
        Text(name)
          .font(.headline)
      }
    } // END: SCROLLV
  }
}

// MARK: FUNCTIONS


/// Gets and alert with a specific title.
///
/// This function create and returns an alert immediately. The alert will have a title based on the text parameter but wil NOT have a message.
/// ```
/// getAlert(text: "Hi") -> Alert(title: Text("Hi))
/// ```
/// - Warning: There is no additional message in this Alert.
/// - Parameter text: This si the title for the alert.
/// - Returns: Returns an alert wit a title.
func getAlert(text: String) -> Alert {
  return Alert(title: Text(text))
}
