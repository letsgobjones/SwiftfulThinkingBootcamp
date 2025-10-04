//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 9/14/25.
//

import SwiftUI

struct PickerBootcamp: View {
@State var selection: String = "1"
  @State var selection2: String = "1"
  @State var selection3: String = "Most Recent"
  let filterOptions: [String] = [
    "Most Recent", "Most Popular", "Most Liked"
  ]
  
//  init(){
//    UISegmentedControl.appearance().selectedSegmentTintColor = .blue
//    
//    let attributes: [NSAttributedString.Key: Any] = [
//      .foregroundColor: UIColor.white
//    ]
//    UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
//    
//  }
  
    var body: some View {
      VStack {
        HStack {
          Text("Age:")
          Text(selection)
        }
        Picker(
          selection: $selection) {
            ForEach(18..<100) {
              Text("\($0)")
                .tag("\($0)")
                .font(.headline)
                .foregroundColor(.red)
            }
          } label: {
            Text("Picker")
          }
          .pickerStyle(.wheel)
        //          .background(Color.gray.opacity(0.3))
        
        
        List {
          Picker(
          selection: $selection2) {
            ForEach(filterOptions, id: \.self) { option in
              HStack {
                Text(option)
               Image(systemName: "heart.fill")
              }
                .tag(option)
            }
          }
          label: {
              HStack {
                Text("Filter")
                Text(selection)
              }
            }
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue.opacity(0.3))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .blue.opacity(0.3), radius: 10, x: 0.0, y: 10.0)
            .pickerStyle(.menu)
            
            
            
          }
        
        
        
        Picker(selection: $selection3) {
          ForEach(filterOptions, id: \.self) { option in
            Text(option)
              .tag(option)
          }
        } label: {
      Text("Picker")
        }
        .pickerStyle(.segmented)
        .tint(.blue)


        }
      }
  
}

#Preview {
    PickerBootcamp()
}
