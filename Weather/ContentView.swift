//
//  ContentView.swift
//  Weather
//
//  Created by Anastasia Grey on 2023/10/25.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        VStack{
            //#FFAAC1
            //255 170 194
            //Color(red: 255/255.0, green: 170/255.0, blue: 194/255.0)
            Color(0xFFAAC1)
        }
    }
}

extension Color {
    init(_ hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xFF) / 255,
            green: Double((hex >> 8) & 0xFF) / 255,
            blue: Double((hex >> 0) & 0xFF) / 255,
            opacity: alpha
        )
    }
}

#Preview {
    ContentView()
}
