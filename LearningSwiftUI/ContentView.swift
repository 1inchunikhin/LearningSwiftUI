//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by Николай Чунихин on 30.04.2023.
//

import SwiftUI

struct ContentView: View {
    @State var alert = false
    @State var actionSheet = false //now we name it - confirmation dialog
    
    var body: some View {
        VStack {
            Button {
                self.alert = true
            } label: {
                Text("Alert")
                    .font(.system(size: 24))
            }.alert(isPresented: $alert) {
                Alert(title: Text("1st SwiftUI lesson"),
                      message: Text("I'm learning alerts in SwiftUI"),
                      primaryButton: .default(Text("Ok")),
                      secondaryButton: .cancel())
            }
            .buttonStyle(.borderedProminent)
            
            Button {
                self.alert = true
            } label: {
                Text("Another Alert")
                    .font(.system(size: 24))
            }.alert("1st SwiftUI lesson", isPresented: $alert) {
                Button("OK", role: .destructive) {
                    //
                }
            } message: {
                Text("I'm learning alerts in SwiftUI")
            }
            .buttonStyle(.borderedProminent)
            .tint(.green)
            
            Button {
                self.actionSheet = true
            } label: {
                Label("Action Sheet", systemImage: "trash.fill")
                    .font(.system(size: 24))
            }.confirmationDialog("1st SwiftUI lesson", isPresented: $actionSheet,titleVisibility: .visible, actions: {
                Button("OK", role: .destructive) {
                    //
                }
            }, message: {
                Text("I'm learning alerts in SwiftUI")
            })
            .buttonStyle(.borderedProminent)
            .tint(.red)

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
