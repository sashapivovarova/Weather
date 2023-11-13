//
//  ContentView.swift
//  Weather
//
//  Created by Anastasia Grey on 2023/10/25.
//

import SwiftUI


struct ContentView: View {
    
    @State var selectedItem: String = "Please select the prefecture."
    
    var body: some View {
        VStack{
            Text(selectedItem)
            Picker(selection: $selectedItem, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
                Text("Kansai - Kyoto").tag("Kyoto")
                Text("Kanto - Tokyo").tag("Tokyo")
            }
        }
    }
}

#Preview {
    ContentView()
}
