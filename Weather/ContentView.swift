//
//  ContentView.swift
//  Weather
//
//  Created by Anastasia Grey on 2023/10/25.
//

import SwiftUI


struct ContentView: View {
    
    @State var isLighting: Bool = false
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.white, Color.peach]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea()
            Text("Sasha")
                .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.peach]),
                                           startPoint: .topLeading,
                                           endPoint: .bottomTrailing))
        }
    }
}

#Preview {
    ContentView()
}
