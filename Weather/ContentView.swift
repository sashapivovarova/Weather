//
//  ContentView.swift
//  Weather
//
//  Created by Anastasia Grey on 2023/10/25.
//

import SwiftUI

struct ContentView: View {
    @State var myName: String = "not yet"
    
    var myCustomClousure: (String, String) -> String = { prefix, name in
        return prefix + name
    }
    
    var body: some View {
        VStack {
            Text(myName)
            Button {
                //                myName = createName(prefix: "Hello, ", name: "sasha!")
                myName = myCustomClousure("Hello, ", "sasha")
            }label: {
                Text("Hit Me")
            }
        }
    }
    
    func createName(prefix: String, name: String) -> String {
        return prefix + name
    }
}

#Preview {
    ContentView()
}
