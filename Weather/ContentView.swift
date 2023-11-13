//
//  ContentView.swift
//  Weather
//
//  Created by Anastasia Grey on 2023/10/25.
//

import SwiftUI


struct ContentView: View {
    
    @State var myLevel: Int = 1
    
    var body: some View {
        VStack{
            Stepper(value: $myLevel, in: 1...10) {
                Text("Level \(myLevel)")
            }
        }
        .padding()
        .colorMultiply(.pink)
    }
}

#Preview {
    ContentView()
}
