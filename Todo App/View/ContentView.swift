//
//  ContentView.swift
//  Todo App
//
//  Created by Eadfast on 12/01/2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    //MARK: PROPERTIES
    @State private var showingAddTodoView: Bool = false
    
    // MARK: BODY
    var body: some View {
        NavigationView {
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                Text("Edvaldo Afonso")
            } //: LIST
            .navigationBarTitle("Todo", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                self.showingAddTodoView.toggle()
            }){
                Image(systemName: "plus")
            } //: ADD BUTTON
                .sheet(isPresented: $showingAddTodoView) {
                    AddTodoView()
                }
          )
        } //:  NAVIGATION
    }

}

// MARK: PREIVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()

    }
}
