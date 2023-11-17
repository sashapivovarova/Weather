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
        NavigationStack{
            Form {
                NavigationLink {
                    ZStack {
                        Color.peach.ignoresSafeArea()
                        Text("Destination")
                    }
                    .navigationTitle("What you like")
                } label: {
                    Label("Likes", systemImage: "heart")
                }
                NavigationLink {
                    Text("Destination")
                } label: {
                    Label("Camera", systemImage: "camera")
                }
            }
            .navigationTitle("Settings")
            .toolbar(.hidden)
        }
    }
}

#Preview {
    ContentView()
}
