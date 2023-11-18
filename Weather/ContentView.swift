//
//  ContentView.swift
//  Weather
//
//  Created by Anastasia Grey on 2023/10/25.
//

import SwiftUI


struct ContentView: View {
    
    @State var isShown: Bool = false
    
    var body: some View {
        VStack {
            if isShown {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(height: 300)
                    .foregroundColor(.peach)
                    .transition(.scale)
            }
            Button {
                isShown.toggle()
            } label: {
                Text("Show")
            }
        }
        .animation(.easeIn, value: isShown)
    }
}

#Preview {
    ContentView()
}
