//
//  AddTodoView.swift
//  Todo App
//
//  Created by Eadfast on 12/01/2023.
//

import SwiftUI

struct AddTodoView: View {
    //MARK: PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    @State private var name: String = ""
    @State private var priority: String = "Normal"
    
    let priorities = ["High", "Normal", "Low"]
    
    // MARK: BODY
    var body: some View {
        NavigationView{
            VStack {
                Form {
                    // MARK: TODO NAME
                    TextField("Todo", text: $name)
                    
                    
                    // MARK: TODO PRIORITIES
                    
                    Picker("priority", selection: $priority) {
                        ForEach(priorities, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    
                    // MARK: SAVE BUTTON
                    Button(action: {
                        print("Save Button")
                    }) {
                        Text("Save")
                    } //: SAVE BUTTON
                    
                } //: Form
                Spacer()
            } //: VSTACK
            
            .navigationBarTitle("New todo", displayMode: .inline)
            .navigationBarItems(trailing:
                                    
                                    Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "xmark")
                
            })
            
        } //: NAVIGATION
    }
}


// MARK: PREIVIEW

struct AddTodoView_Previews: PreviewProvider {
    static var previews: some View {
        AddTodoView()
    }
}
