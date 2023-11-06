//
//  ContentView.swift
//  Weather
//
//  Created by Anastasia Grey on 2023/10/25.
//

import SwiftUI


struct ContentView: View {
    
    @State var myName = "Sasha"
    
    var body: some View {
        VStack{
            Text(myName)
            Button("Delay!") {
                downloadFile()
            }
        }
    }
    
    func downloadFile() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            myName = "Done"
        }
    }
}

#Preview {
    ContentView()
}
