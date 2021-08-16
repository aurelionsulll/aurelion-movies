//
//  SettingView.swift
//  aurelion-movies
//
//  Created by mehdi on 16/08/2021.
//

import SwiftUI

struct SettingView: View {
    
    @Binding var isPresented: Bool
    
    @State private var selection = 1
    @State private var email = ""
    
    var body: some View {
        NavigationView {
            Form {
                Picker(selection: $selection, label: Text("Favorite Genre")) {
                    Text("Action").tag(1)
                    Text("Comedy").tag(2)
                    Text("Horror").tag(3)
                    Text("Scify").tag(4)
                }
                
                Section(header: Text("Email")) {
                    TextField("Email", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                Button(action: {
                    isPresented.toggle()
                }, label: {
                    Text("Save")
                })
            }
            .navigationTitle("Settigs")
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView(isPresented: Binding<Bool>.constant(false))
    }
}
