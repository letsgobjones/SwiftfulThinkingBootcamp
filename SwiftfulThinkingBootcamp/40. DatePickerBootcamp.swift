//
//  DatePickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Brandon Jones on 10/1/25.
//

import SwiftUI

struct DatePickerBootcamp: View {
  @State var selectedDate: Date = Date()
  let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
  let endingDate: Date = Date()
  var dateFormatter: DateFormatter {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .short
    return formatter
  }
  var body: some View {
    VStack {
      Text("SELECTED DATE IS:")
      Text(selectedDate.description)
        .font(.title)
      Text(dateFormatter.string(from: selectedDate))
      DatePicker("Select a Date", selection: $selectedDate)
        .tint(.red)
        .foregroundColor(.red)
      
      //        .datePickerStyle(.graphical)
        .padding()
      
      
      DatePicker("Test", selection: $selectedDate, in: startingDate...endingDate)
        .foregroundStyle(.green)
        .padding()
      
      
    }
    
  }
}

#Preview {
  DatePickerBootcamp()
}
