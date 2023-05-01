//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by Николай Чунихин on 30.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var sectionTime = 0
    @State var sectionMode = 0
    @State var isOn = false
    var pickerData = ["5 min", "10 min", "15 min", "20 min"]
    var modes = ["Light", "Dark"]
    
    var body: some View {
        NavigationView {
            Form {
                Picker("Time", selection: $sectionTime) {
                    ForEach(0..<pickerData.count) {
                        Text(self.pickerData[$0])
                    }
                }
                .pickerStyle(.navigationLink)
                
                Toggle(isOn: $isOn) {
                    Text("Plane mode")
                        .foregroundColor(isOn ? .green : .orange)
                }
                
                Picker("Mode", selection: $sectionMode) {
                    ForEach(0..<modes.count) {
                        Text(self.modes[$0])
                    }
                }
                .pickerStyle(.segmented)
                
            }
            .navigationBarTitle("Settings")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

