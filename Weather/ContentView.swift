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
        Form {
            HStack{
                Image(systemName: "heart")
                Text("Sasha")
            }
            HStack{
                Image(systemName: "heart")
                Text("Brat")
            }
            HStack{
                Image(systemName: "heart")
                Text("Rabbit")
            }
        }
    }
}

#Preview {
    ContentView()
}
