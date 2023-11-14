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
        VStack{
            Image(systemName: "cloud")
                .offset(y: -200)
            
            HStack{
                Image(systemName: "bolt")
                    .rotationEffect(isLighting ? .degrees(0) : .degrees(180+360))
                    .offset(y: isLighting ? 0 : -200)
                    .padding()
                    .animation(.easeInOut(duration: 2), value:isLighting)
                Image(systemName: "bolt")
                    .offset(y: isLighting ? 0 : -200)
                    .padding()
                    .animation(.easeIn(duration: 2), value:isLighting)
                Image(systemName: "bolt")
                    .offset(y: isLighting ? 0 : -200)
                    .padding()
                    .animation(.easeOut(duration: 2), value:isLighting)
            }
            
            Button {
                isLighting.toggle()
            } label: {
                Text("Click")
            }
        }
    }
}

#Preview {
    ContentView()
}
