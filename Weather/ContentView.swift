//
//  ContentView.swift
//  Weather
//
//  Created by Anastasia Grey on 2023/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
//            Color("Peach").ignoresSafeArea()
            Color.peach2.ignoresSafeArea()
            Text("Hello")
        }
    }
}

extension Color {
    static let peach2 = Color("Peach")
}

#Preview {
    ContentView()
}
