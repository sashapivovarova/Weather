//
//  ContentView.swift
//  Weather
//
//  Created by Anastasia Grey on 2023/10/25.
//

import SwiftUI


struct ContentView: View {
    
    @State var myPoint: Float = 0
    
    var body: some View {
        VStack{
            Text(myPoint.description)
            Slider(value: $myPoint, in: 0...100, step: 1) {
                Text("My Slider")
            } minimumValueLabel: {
                Text("0")
            } maximumValueLabel: {
                Text("100")
            }
            .tint(.peach)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
