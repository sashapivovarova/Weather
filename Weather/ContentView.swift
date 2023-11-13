//
//  ContentView.swift
//  Weather
//
//  Created by Anastasia Grey on 2023/10/25.
//

import SwiftUI


struct ContentView: View {
    
    @State var inputText: String = "Please intput the information about you."
    
    var body: some View {
        VStack{
            TextEditor(text: $inputText)
        }
        .padding()
        .background(.pink)
        .frame(height: 300)
        .multilineTextAlignment(.center)
    }
}

#Preview {
    ContentView()
}
