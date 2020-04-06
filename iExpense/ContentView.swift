//
//  ContentView.swift
//  iExpense
//
//  Created by Ahad Islam on 4/6/20.
//  Copyright © 2020 Ahad Islam. All rights reserved.
//

import SwiftUI

class User: ObservableObject {
    @Published var firstName = "Bilbo"
    @Published var lastName = "Baggins"
}

struct ObservableObjectView: View {
    @ObservedObject var user = User()
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName), \(user.lastName)")
            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
        }
        
    }
}

struct ContentView: View {
    @State private var showingSheet = false
    
    var body: some View {
        Button("Show Sheet") {
            self.showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "Bobby")
        }
    }
}

struct SecondView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var name: String
    
    var body: some View {
        Button("Dismiss") {
            self.presentationMode.wrappedValue.dismiss()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
