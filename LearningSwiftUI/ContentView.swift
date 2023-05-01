//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by Николай Чунихин on 30.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var toggleX = false
    @State var toggleY = false
    
    var body: some View {
        ZStack {
            HStack{
                VStack{
                    HStack {
                        Text("🖕")
                            .font(.system(size: 70))
                        Spacer()
                    }
                    Spacer()
                    HStack {
                        Spacer()
                        Text("♥️")
                            .font(.system(size: 75))
                        Spacer()
                    }
                    .padding(100)
                }
                Spacer()
            }
            .padding(20)
            
            VStack {
                
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.red)
                    Text("View")
                        .font(.system(size: 32,
                                      weight: .heavy,
                                      design: .rounded))
                }
                .offset(x: toggleX ? 70 : 0)
                .offset(y: toggleY ? -100 : 0)
                .animation(.default, value: toggleY)
                .animation(.default, value: toggleX)
                
                
                Toggle("2nd SwiftUILesson X", isOn: $toggleX)
                Toggle(isOn: $toggleY) {
                    Text("2nd SwiftUILesson Y")
                }
                
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
