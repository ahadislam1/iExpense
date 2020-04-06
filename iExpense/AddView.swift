//
//  AddView.swift
//  iExpense
//
//  Created by Ahad Islam on 4/6/20.
//  Copyright © 2020 Ahad Islam. All rights reserved.
//

import SwiftUI

struct AddView: View {
    @State private var name = ""
    @State private var type = "Personal"
    @State private var amount = ""
    static let types = ["Business", "Personal"]
    
    
    var body: some View {
        NavigationView {
            List {
                TextField("Name", text: $name)
            }
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}
