//
//  ContentView.swift
//  Weather
//
//  Created by Anastasia Grey on 2023/10/25.
//

import SwiftUI


struct ContentView: View {
    
    @State var isTurnedOn = false
    @State var myText: String = ""
    
    var body: some View {
        VStack{
            Toggle(isOn: $isTurnedOn) {
                Text("Switch")
            }
            .padding()
            
            TextField("test", text: $myText)
        }
    }
}

#Preview {
    ContentView()
}
